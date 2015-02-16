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
	
	public static function printBitmapFileBluetooth(path:String,type:String) 
	{
		#if (android && openfl)
		
		var resultJNI = printjob_print_bitmap_file_bluetooth_jni(path,type);
		
		#end
	}
	
	#if (android && openfl)
	private static var printjob_print_bitmap_file_jni = JNI.createStaticMethod ("org.haxe.extension.PrintJob", "printBitmapFile", "(Ljava/lang/String;Ljava/lang/String;)V");
	private static var printjob_print_bitmap_file_bluetooth_jni = JNI.createStaticMethod ("org.haxe.extension.PrintJob", "printBitmapFileBluetooth", "(Ljava/lang/String;Ljava/lang/String;)V");
	#end
	
	
}