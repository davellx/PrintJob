#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"


using namespace printjob;



static value printjob_print_bitmap (const char* path, const char* id) {
	
	PrintBitmap(path, id);
	
}
DEFINE_PRIM (printjob_print_bitmap, 1);



extern "C" void printjob_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (printjob_main);



extern "C" int printjob_register_prims () { return 0; }