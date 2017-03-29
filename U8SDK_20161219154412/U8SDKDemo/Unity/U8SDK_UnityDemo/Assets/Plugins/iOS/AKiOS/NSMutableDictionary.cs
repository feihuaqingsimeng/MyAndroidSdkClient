using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using AKiOS.Core;

namespace AKiOS
{
	public class NSMutableDictionary : NSObject
	{
		public static NSMutableDictionary dictionary()
		{
			return (NSMutableDictionary)Class.FindByName("NSMutableDictionary").Call("dictionary").Cast(typeof(NSMutableDictionary));
		}

		public NSMutableDictionary setFromDict(Dictionary<string, string> value)
		{
			foreach (var kv in value) {
                if (kv.Value != null)
                {
                    setValueForKey(kv.Key, new NSString(kv.Value));
                }
			}
			return this;
		}

		public NSMutableDictionary setFromDict(Dictionary<string, object> value)
		{
            foreach (var kv in value) {
				var ocValue = UnknownValue.CsToOc(kv.Value);
                if (ocValue != null)
                {
                    setValueForKey(kv.Key, ocValue);
                }
			}
			return this;
		}
	}
}
