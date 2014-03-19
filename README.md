Samyang Fisheye Defisher
======================

A defishing script for the Samyang/Falcon/Walimex (and other rebrands) to batch defish all the photos inside a folder. For windows with hugin installed.  
These scripts defish the photos using the panini method (straightens only the vertical lines) or the rectilinear method (straightens both vertical and horizontal lines).  
The defishing algorithms are extracted from Magic Lantern. So if you use Magic Lantern, the defished image you see in your camera will be exactly the same image you will get with these scripts.

You can se these scripts in action [HERE](http://www.derelictplaces.co.uk/main/showthread.php?p=245125) (thanks to [Mars Lander](https://www.facebook.com/urbexart)).

What you need 
----
- Any Windows version
- Hugin ([Download here](http://sourceforge.net/projects/hugin/files/latest/download))
- My scripts ([Download here](https://github.com/lucacapacci/SamyangFisheyeDefisher/archive/master.zip))

Usage instructions
----
- Download and install Hugin 
- Download the scripts
- Open with the notepad the batch file you want to use (defish-panini.bat or defish-rectilinear.bat) and in the second line after the words "set width=" replace the numbers with the width of your images, and in the third line after the words "set height=" replace the numbers with the height of your images 
- Save the modified batch file and close the notepad 
- Put the batch file in the same directory of your photos and just run it, it wil defish all the images inside the directory


