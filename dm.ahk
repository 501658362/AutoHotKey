
dm:=ComObjCreate("dm.dmsoft")
ver := dm.ver() ;调用大漠的插件版本查询函数，只会出现两种情况返回值为空及返回值为版本号。
 
 


$F3::
{
	x1:=
	y1:=
	;varI:=dm.FindPic(0, 0, 1900, 1000, "C:\Users\ubtour\Desktop\ahk\q1.bmp","000000", 1.0, 0, intX , intY )
    pos1:= dm.FindPicE(0, 0, 1900,1000, "C:\Users\Chen\Desktop\dm\gameimg\test.bmp","000000", 1.0 ,0)
	;MsgBox, %varI%  %pos1% %intX% %intY%

	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]
	MsgBox, %x1%  %y1%
	MouseMove, x1, y1
}

return