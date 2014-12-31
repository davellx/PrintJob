package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class PrintJob {
	
	
	public static function printBitmap(path:String,id:String) 
	{
		#if (android && openfl)
		
		var resultJNI = printjob_print_bitmap_jni(path,id);
		
		#else
		
		//return printjob_sample_method(inputValue);
		
		#end
	}
	
	
	//public static function sampleMethod (inputValue:Int):Int {
		//
		//#if (android && openfl)
		//
		//var resultJNI = printjob_sample_method_jni(inputValue);
		//var resultNative = printjob_sample_method(inputValue);
		//
		//if (resultJNI != resultNative) {
			//
			//throw "Fuzzy math!";
			//
		//}
		//
		//return resultNative;
		//
		//#else
		//
		//return printjob_sample_method(inputValue);
		//
		//#end
		//
	//}
	
	
	//private static var printjob_sample_method = Lib.load ("printjob", "printjob_sample_method", 1);
	
	#if (android && openfl)
	//private static var printjob_sample_method_jni = JNI.createStaticMethod ("org.haxe.extension.PrintJob", "sampleMethod", "(I)I");
	private static var printjob_print_bitmap_jni = JNI.createStaticMethod ("org.haxe.extension.PrintJob", "printBitmap", "(Ljava/lang/String;Ljava/lang/String;)V");
	#end
	
	
}