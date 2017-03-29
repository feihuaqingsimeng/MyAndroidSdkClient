//
//  Arguments.cs
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

namespace AKiOS.Core
{
    public class Arguments
    {
        internal IntPtr[] arrArguments;

        public UnknownValue ReturnValue { get; set; }

        internal Arguments(IntPtr pArguments)
        {
            arrArguments = new IntPtr[10];
            Marshal.Copy(pArguments, arrArguments, 0, arrArguments.Length);
        }

        public NSObject GetSelf()
        {
            return new NSObject { Handle = arrArguments[0] };
        }

        public string GetMethodName()
        {
            return Marshal.PtrToStringAnsi(arrArguments[1]);
        }

        public UnknownValue GetValue(int paramIndex)
        {
            return new UnknownValue(arrArguments[paramIndex + 2]);
        }

        public override string ToString()
        {
            return string.Format("[Arguments: ReturnObject={0}]", ReturnValue);
        }
    }
}

