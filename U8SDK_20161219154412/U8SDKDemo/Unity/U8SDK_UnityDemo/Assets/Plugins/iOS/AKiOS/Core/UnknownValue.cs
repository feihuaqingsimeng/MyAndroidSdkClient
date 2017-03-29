//
//  UnknownValue.cs
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

namespace AKiOS.Core
{
    public class UnknownValue : NSObject
    {
        public byte [] Bytes { get; protected set; }

        public bool AsBool()
        {
            return BitConverter.ToBoolean(Bytes, 0);
        }

        public float AsFloat()
        {
            return BitConverter.ToSingle(Bytes, 0);
        }

        public double AsDouble()
        {
            return BitConverter.ToDouble(Bytes, 0);
        }

        public int AsInt32()
        {
            return BitConverter.ToInt32(Bytes, 0);
        }

        public IntPtr AsIntPtr()
        {
            return new IntPtr(BitConverter.ToInt32(Bytes, 0));
        }

        public string AsCString()
        {
            return Marshal.PtrToStringAnsi(Handle);
        }

        public T AsStruct<T>() where T : struct
        {
            GCHandle handle = GCHandle.Alloc(Bytes, GCHandleType.Pinned);
            T value = (T)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(T));
            handle.Free();
            return value;
        }

        //--------------------------------

        public UnknownValue(IntPtr pointer)
        {
            Handle = pointer;
            Bytes = null;
        }

        public UnknownValue(byte[] bytes)
        {
            Handle = IntPtr.Zero;
            Bytes = bytes;
        }

        //-------------------------

        public override string ToString()
        {
            return string.Format("[UnknownValue: Pointer=0x{0} Bytes={1} ]", Handle.ToString("x8"), Bytes == null ? "<null>" : ("byte[" + Bytes.Length.ToString() + "]"));
        }

		public static NSObject CsToOc(object csobj)
		{
			if (csobj == null) {
				return null;
			} else if (csobj is NSObject) {
				return (NSObject)csobj;
			} else if (csobj is string) {
				return new NSString ((string)csobj);
			} else if (csobj.GetType () == typeof(int)) {
				return new NSNumber ((int)csobj);
			} else if (csobj.GetType () == typeof(float)) {
				return new NSNumber ((float)csobj);
			} else if (csobj.GetType () == typeof(double)) {
				return new NSNumber ((double)csobj);
			} else if (csobj.GetType () == typeof(bool)) {
				return new NSNumber ((bool)csobj);
			} else if (csobj.GetType () == typeof(Int64)) {
				return new NSNumber ((Int64)csobj);
			} else if (csobj.GetType () == typeof(Dictionary<string,string>)) {
				return NSMutableDictionary.dictionary ().setFromDict ((Dictionary<string,string>)csobj);
			} else if (csobj.GetType () == typeof(Dictionary<string,object>)) {
				return NSMutableDictionary.dictionary ().setFromDict ((Dictionary<string,object>)csobj);
			}

			return null;
		}
    }
}

