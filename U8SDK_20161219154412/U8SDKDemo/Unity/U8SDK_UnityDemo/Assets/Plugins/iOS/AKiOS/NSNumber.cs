using System;

namespace AKiOS
{
	public class NSNumber : NSObject
	{
        static Class _cls;
        static Class cls {
            get {
                if (_cls == null)
                {
                    _cls = Class.FindByName("NSNumber");
                }
                return _cls;
            }
        }

		public NSNumber()
		{
		}

        public NSNumber(int v)
        {
            this.Handle = cls.Call("numberWithInt:", v).Handle;
        }
        
        public NSNumber(short v)
        {
            this.Handle = cls.Call("numberWithShort:", v).Handle;
        }
        
        public NSNumber(long v)
        {
            this.Handle = cls.Call("numberWithLong:", v).Handle;
        }
        
        public NSNumber(float v)
        {
            this.Handle = cls.Call("numberWithFloat:", v).Handle;
        }

        public NSNumber(double v)
        {
            this.Handle = cls.Call("numberWithDouble:", v).Handle;
        }
        
        public NSNumber(bool v)
        {
            this.Handle = cls.Call("numberWithBoolean:", v).Handle;
        }
	}
}

