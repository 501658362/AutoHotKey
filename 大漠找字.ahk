 #SingleInstance Force
#Include 显示通知.ahk


	MsgBox, 22


~4::
{
	
dm:=ComObjCreate("dm.dmsoft")
ver := dm.ver() ;调用大漠的插件版本查询函数，只会出现两种情况返回值为空及返回值为版本号。
if(ver){
	var_msg:="加载大漠的插件成功 大漠版本号" ver
	showMsg(var_msg)
}else{
	var_msg:="加载大漠的插件失败"
	showMsg(var_msg)
}

 
base_path := dm.GetBasePath()
MsgBox, %base_path%
dm.SetPath(base_path)
dm.SetDict(0,"C:\Users\Chen\Desktop\dm\dm_soft.txt")
intX:=0
intY:=0
pos1:=dm.FindStrE(0,0,500,500,"神圣伤害","5353ca-161635",1.0) 
s1:=dm.Ocr(0,0,700,700,"5353ca-161635",1.0)
MsgBox, %s1%  
MsgBox, %pos1%  
	 
	 posion := StrSplit(pos1 , "|")
	 x1 := posion[2]
	y1 := posion[3]
;	MouseMove, %x1%, %y1%
		
		; 	MsgBox, %x1% %y1% 
		 
	;MsgBox, %pos1%  
 
}
return

 