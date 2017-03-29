using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace AKiOS
{
	public class NSArray<T> : NSObject, IEnumerable<T> where T : NSObject, new()
	{
		public int Count { get { return Call("count").AsInt32(); } }
	
		public T ObjectAtIndex(int index)
		{
			return Call("objectAtIndex:", index).Cast<T>();
		}
		
		#region IEnumerable[NSObject] implementation
		public IEnumerator<T> GetEnumerator()
		{
			int n = this.Count;
			for (int i = 0; i < n; i++)
			{
				yield return this.ObjectAtIndex(i);
			}
		}
		#endregion
	
		#region IEnumerable implementation
		IEnumerator IEnumerable.GetEnumerator()
		{
			return ((IEnumerable<T>)this).GetEnumerator();
		}
		#endregion
	}
}