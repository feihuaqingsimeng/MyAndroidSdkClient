using System;

namespace AKiOS
{
	public class NSMutableArray<T> : NSArray<T> where T : NSObject, new()
	{
		public static NSMutableArray<T> Array()
		{
			return (NSMutableArray<T>)Class.FindByName("NSMutableArray").Call("array").Cast(typeof(NSMutableArray<T>));
		}
		
		public void AddObject(T obj)
		{
			this.Call("addObject:", obj);
		}
	}
}

