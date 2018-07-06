
/*Counting the Number of Beans

Assuming desired images are now open.
Three versions of each Beans1.jpg - Beans2.jpg*/

//start
//COUNTING BEANS

selectWindow("Beans2.jpg");
//setTool("line")  -scaling beans
makeLine(3432, 540, 4332, 540);
run("Set Scale...", "known=101600 unit=um global");
run("8-bit");
run("Make Binary");
run("Analyze Particles...", "size = 33800-Infinity show=Outlines display");
saveAs("Results",  "/Uers/silvia-m/xData/ResultsBeans2.xls");
close();

//Stack Animated Gif and Montage construction from Stack
selectWindow("Beans4.jpg");
selectWindow("Beans4-1.jpg");
selectWindow("Beans4-2.jpg");
selectWindow("Beans3.jpg");
selectWindow("Beans3-1.jpg");
selectWindow("Beans3-2.jpg");
selectWindow("Beans2.jpg");
selectWindow("Beans2-1.jpg");
selectWindow("Beans2-2.jpg");
selectWindow("Beans1.jpg");
selectWindow("Beans1-1.jpg");
selectWindow("Beans1-2.jpg");
run("Rotate 90 Degrees Left");
selectWindow("Beans1-1.jpg");
run("Rotate 90 Degrees Left");
selectWindow("Beans1-2.jpg");
selectWindow("Beans1.jpg");
run("Rotate 90 Degrees Left");
selectWindow("Beans1-2.jpg");
selectWindow("Beans2-2.jpg");
run("Rotate 90 Degrees Left");
selectWindow("Beans2-1.jpg");
run("Rotate 90 Degrees Left");
selectWindow("Beans2.jpg");
run("Rotate 90 Degrees Left");
run("Images to Stack", "name=StackBrightness1 title=[] use");
doCommand("Start Animation [\\]");
run("Animated Gif ... ", "name=StackBrightness1 set_global_lookup_table_options=[Do not use] optional=[] image=[No Disposal] set=1000 number=0 transparency=[No Transparency] red=0 green=0 blue=0 index=0 filename=/Users/silvia-m/xData/StackBrightness1.gif");
run("Make Montage...", "columns=3 rows=4 scale=0.25");
//end
