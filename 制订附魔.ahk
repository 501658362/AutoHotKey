getBm(){
	global dm
	global v_loop
	
	if(!dm.ver()){
		dm:=ComObjCreate("dm.dmsoft")
		
	;	showMsg("重新加载dm" dm.ver())
	} 
	return dm
}
$y::
{
	dm:=ComObjCreate("dm.dmsoft")
	pos1:= dm.FindPicE(		46, 420, 	476, 509, "C:\Users\Chen\Desktop\dm\gameimg\暴击伤害.bmp","000000", 0.93 ,0)

	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]

	MsgBox % Array[A_Index]

	MsgBox, %x1%  %y1% %Array%
	if(x1 = -1){
		MsgBox, "找不到"
		return  
	}
	
	MsgBox, %x1%,  %y1%
	MouseMove, x1, y1
}

