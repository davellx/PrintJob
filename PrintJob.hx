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
	
	
	public static function printBitmapFile(path:String,id:String) 
	{
		#if (android && openfl)
		
		var resultJNI = printjob_print_bitmap_file_jni(path,id);
		
		#end
	}
	
	#if (android && openfl)
	private static var printjob_print_bitmap_file_jni = JNI.createStaticMethod ("org.haxe.extension.PrintJob", "printBitmapFile", "(Ljava/lang/String;Ljava/lang/String;)V");
	#end
	
	
}