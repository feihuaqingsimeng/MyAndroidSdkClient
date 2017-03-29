//
//  Class.cs
//
//  AKiOS Universal Unity Plugin for iOS, https://github.com/alex-kir/AKiOS
//
//  Created by Alexander Kirienko on 03.04.14.
//  Copyright (c) 2013-2015 Alexander Kirienko. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
using System;
using System.Runtime.InteropServices;
using System.Collections.Generic;
using AKiOS.Core;

namespace AKiOS
{
    public class Class : NSObject
    {
        [DllImport("__Internal")]
        internal static extern IntPtr AKiOS_Core_GetClass(string szClassName);

        public static Class FindByName(string className)
        {
            IntPtr ret = AKiOS_Core_GetClass(className);
            return new Class(ret);
        }

		public static NSObject newInstance(string className)
		{
			Class cls = FindByName (className);
			return cls.Call ("new").Cast<NSObject>();
		}

        private Class(IntPtr handle)
        {
            Handle = handle;
        }

        //=========================================

        [DllImport("__Internal")]
        internal static extern IntPtr AKiOS_Core_CreateClass(string szClassName, string szSuperClassName);

        [DllImport("__Internal")]
        internal static extern void AKiOS_Core_AddProtocol(IntPtr pClass, string szProtocolName);

        [DllImport("__Internal")]
        internal static extern void AKiOS_Core_RegisterClass(IntPtr pClass);

        internal static Dictionary<string, Action<Arguments>> _methods = new Dictionary<string, Action<Arguments>>();

        private static IntPtr CallbackFunction(int arguments)
        {
            var args = new Arguments(new IntPtr(arguments));
            string key = args.GetSelf().GetClassName() + "###" + args.GetMethodName();
            Action<Arguments> methodImpl = null;
            if (_methods.TryGetValue(key, out methodImpl))
            {
                methodImpl(args);
            }
            return args.ReturnValue != null ? args.ReturnValue.Handle : IntPtr.Zero;
        }

        private string ClassName { get; set; }

        public Class(string className, string superClassName)
        {
            Handle = AKiOS_Core_CreateClass(className, superClassName);
            ClassName = className;
        }

        public override string ToString()
        {
            return string.Format("[Class: Handle={0}, ClassName={1}]", Handle, ClassName);
        }

        public void AddProtocol(string protocolName)
        {
            AKiOS_Core_AddProtocol(this.Handle, protocolName);
        }

        public void Register()
        {
            AKiOS_Core_RegisterClass(Handle);
        }
    }
}

