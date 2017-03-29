using System;

namespace AKiOS
{
	public class NSNumberFormatter : NSObject
	{
		public const int NSNumberFormatterBehavior10_4 = 1040;
		public const int NSNumberFormatterCurrencyStyle = 2;

		public static NSNumberFormatter New()
		{
			return Class.FindByName("NSNumberFormatter").Call("new").Cast<NSNumberFormatter>();
		}

		public void SetFormatterBehavior(int behavior)
		{
    		this.Call("setFormatterBehavior:", behavior);
		}

		public void SetNumberStyle(int style)
		{
    		this.Call("setNumberStyle:", style);
		}

		public void SetLocale(NSLocale locale)
		{
    		this.Call("setLocale:", locale);
		}

		public NSString StringFromNumber(NSNumber number)
		{
			return this.Call("stringFromNumber:", number).Cast<NSString>();
		}

	}
}

