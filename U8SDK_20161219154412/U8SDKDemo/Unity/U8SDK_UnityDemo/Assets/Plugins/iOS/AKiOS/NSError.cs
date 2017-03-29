using System;

namespace AKiOS
{
	public class NSError : NSObject
	{
		public int Code { get { return this.Call("code").AsInt32(); } }
		public NSString LocalizedDescription { get { return this.Call("localizedDescription").Cast<NSString>(); } }
		
		public NSError ()
		{
		}
	}
}

