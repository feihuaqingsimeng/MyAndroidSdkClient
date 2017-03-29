using System;

namespace AKiOS
{
	public class NSMutableSet : NSObject
	{
		public static NSMutableSet New()
		{
			return Class.FindByName("NSMutableSet").Call("new").Cast<NSMutableSet>();
		}
		
		public void AddObject(NSObject obj)
		{
			this.Call("addObject:", obj);
		}

		public void RemoveObject(NSObject obj)
		{
			this.Call("removeObject:", obj);
		}
	}
}

