PrintJob
========

/!\ Only works with Android at the moment.

PrintJob for OpenFL, lets you print with your device

##Installation

haxelib git PrintJob https://github.com/davellx/PrintJob.git

##Use

```
add PrintJob in haxelib, have an image to print.
```

Then :

  ```haxe
  PrintJob.printBitmapFile("valid image file parh on your device", 'id of the printjob');
  ```

  
##RoadMap
###Android
* Print from a file // done 
* print print from a BitmapData or a ByteArray
* add options like orientation, scale, etc.

###iOS
* start to do it
