//
//  NSObject.cs
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
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace AKiOS
{
    public class NSObject
    {
        [DllImport("__Internal")]
        internal static extern IntPtr AKiOS_Core_CallMethod(IntPtr pInstance, string szMethodName, IntPtr pArgs, int argsCount, IntPtr ppReturnedBytes);

        [DllImport("__Internal")]
        internal static extern bool AKiOS_Core_HasMethod(IntPtr pInstance, string szMethodName);
        
        public IntPtr Handle { get; protected internal set; }

        public bool IsNil { get { return Handle == IntPtr.Zero; } }

        public T Cast<T>() where T : NSObject, new()
        {
            var ret = new T();
            ret.Handle = this.Handle;
            return ret;
        }

        public object Cast(Type type)
        {
            var ret = (NSObject)type.GetConstructor(Type.EmptyTypes).Invoke(null);
            ret.Handle = this.Handle;
            return ret;
        }

        //--------------------------------

        public NSObject()
        {
            this.Handle = IntPtr.Zero;
        }

        public void Retain()
        {
            Functions.CFRetain(Handle);
        }

        public void Release()
        {
            Functions.CFRelease(Handle);
        }

        //-------------------------

        public override bool Equals(object obj)
        {
            var other = obj as NSObject;
            return other != null && other.Handle.Equals(this.Handle);
        }

        public override int GetHashCode()
        {
            return this.Handle.ToInt32();
        }

        public override string ToString()
        {
            return string.Format("[NSObject: Handle=0x{0}]", Handle.ToString("x8"));
        }

        public string GetClassName()
        {
            return NSString.FromClassPtr(Call("class").AsIntPtr()).ToString();
        }

        public NSObject valueForKey(string key)
        {
            return this.Call("valueForKey:", new NSString(key));
        }

		public void setValueForKey(string key, object v)
        {
			this.Call("setValue:forKey:", Core.UnknownValue.CsToOc(v), new NSString(key));
        }

        public bool HasMethod(string methodName)
        {
            return AKiOS_Core_HasMethod(Handle, methodName);
        }

        public Core.UnknownValue Call(string methodName, params object[] argObjects)
        {
            var argPtrs = new List<IntPtr>();
            var ptrsToFree = new List<IntPtr>();
            foreach (var obj in argObjects)
            {
                if (obj == null)
                {
                    IntPtr ptr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(IntPtr)));
                    Marshal.WriteIntPtr(ptr, IntPtr.Zero);
                    argPtrs.Add(ptr);
                    continue;
                }

                {
                    var value = obj as string;
                    if (value != null)
                    {
                        IntPtr szValue = Marshal.StringToHGlobalAnsi(value);
                        ptrsToFree.Add(szValue);
                        IntPtr ptr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(IntPtr)));
                        Marshal.WriteIntPtr(ptr, szValue);
                        argPtrs.Add(ptr);
                        continue;
                    }
                }

                // TODO UnknownValue.
                {
                    var value = obj as AKiOS.Core.UnknownValue;
                    if (value != null && value.Bytes != null)
                    {
                        IntPtr ptr = Marshal.AllocHGlobal(value.Bytes.Length);
                        Marshal.Copy(value.Bytes, 0, ptr, value.Bytes.Length);
                        argPtrs.Add(ptr);
                        continue;
                    }
                }


                {
                    var value = obj as NSObject;
                    if (value != null)
                    {
                        IntPtr ptr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(IntPtr)));
                        Marshal.WriteIntPtr(ptr, value.Handle);
                        argPtrs.Add(ptr);
                        continue;
                    }
                }

                {
                    IntPtr ptr = Marshal.AllocHGlobal(Marshal.SizeOf(obj.GetType()));
                    Marshal.StructureToPtr(obj, ptr, true);
                    argPtrs.Add(ptr);
                    continue;
                }
            }

            var ret = CallMethod(methodName, argPtrs.ToArray());
            foreach (var ptr in argPtrs)
            {
                Marshal.FreeHGlobal(ptr);
            }
            foreach (var ptr in ptrsToFree)
            {
                Marshal.FreeHGlobal(ptr);
            }
            return ret;
        }

        private static object _callLocker = new object(); // TODO move locker in native code.

        private Core.UnknownValue CallMethod(string methodName, IntPtr[] args)
        {
            lock (_callLocker)
            {
                var pArgs = Marshal.AllocHGlobal(args.Length * Marshal.SizeOf(typeof(IntPtr)));
                var ppReturnedBytes = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(IntPtr)));
                Marshal.Copy(args, 0, pArgs, args.Length);
                IntPtr result = AKiOS_Core_CallMethod(Handle, methodName, pArgs, args.Length, ppReturnedBytes);
                IntPtr pReturnedBytes = Marshal.ReadIntPtr(ppReturnedBytes);
                Marshal.FreeHGlobal(ppReturnedBytes);
                Marshal.FreeHGlobal(pArgs);

                if (pReturnedBytes == IntPtr.Zero)
                {
                    return new Core.UnknownValue(result);
                }
                else
                {
                    int len = result.ToInt32();
                    byte [] bytes = new byte[len];
                    Marshal.Copy(pReturnedBytes, bytes, 0, bytes.Length);
                    return new Core.UnknownValue(bytes);
                }
            }
        }
    }
}

