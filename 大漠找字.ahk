;pickUp(){
;}
#Include public.ahk


pickUp(){
	
	global dm
	global v_loop
	
	;调用大漠的插件版本查询函数，只会出现两种情况返回值为空及返回值为版本号。
dm:=ComObjCreate("dm.dmsoft")
ver := dm.ver() ;调用大漠的插件版本查询函数，只会出现两种情况返回值为空及返回值为版本号。
if(ver){
	var_msg:="加载大漠的插件成功 大漠版本号" ver
	showMsg(var_msg, 500)
}else{
	var_msg:="加载大漠的插件失败"
	showMsg(var_msg, 500)
}
destroyGui()
	
	
	pos1:= dm.FindPicE(	0, 0, 	1920, 1080, "C:\Users\Chen\Desktop\dm\gameimg\传奇.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手武器.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护臂.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇戒指.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇手套.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇项链.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇腰带.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装手套.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装鞋子.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇头盔.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手斧.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手斧.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护盾.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手剑.bmp|C:\Users\Chen\Desktop\dm\gameimg\萦雾水晶.bmp|C:\Users\Chen\Desktop\dm\gameimg\奥尘之土.bmp|C:\Users\Chen\Desktop\dm\gameimg\万用材料.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手连枷.bmp|C:\Users\Chen\Desktop\dm\gameimg\黄装戒子.bmp|C:\Users\Chen\Desktop\dm\gameimg\贵族黄钻石.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇胸甲.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇匕首.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手连枷2.bmp|C:\Users\Chen\Desktop\dm\gameimg\黄装双手弩.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装项链.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装护肩.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装远古.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇匕首1.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装单手剑.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇项链1.bmp","000000", 0.9 ,0)
 
 
 	;pos1:= dm.FindPicE(	0, 0, 	1920, 1080, "C:\Users\Chen\Desktop\dm\gameimg\传奇.胸甲","000000", 0.4 ,0)
 
 
	;|C:\Users\Chen\Desktop\dm\gameimg\传奇项链1.bmp
	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]
 
    ;MsgBox % Array[A_Index]
	
    ; MsgBox, %pos1% %x1%  %y1% %Array%
	if(x1 = -1){
		showMsg("找不到")
	}
	
	if(x1 > 0 and v_loop = 1){
		x1:=x1+10
		y1:=y1+5
		v_msg:=x1 "," y1 
		showMsg(v_msg)
		 
		Click, %x1%,  %y1%
		Sleep, 50
		MouseMove, 960,  500
		Sleep, 300
		;原地捡1s
		SetTimer, MouseLButton1, 150 ;鼠标左键150毫秒连点，150可改动
		Sleep,  500
		SetTimer, MouseLButton1, off ;关闭左键连点计时器，off不可改动
		 
		Click, 960,  500
		if(v_loop = 1){
			Sleep, 500
			pickUp()
		}
		
	}
}


;960, 505, 1383, 231   500距离=2000ms 

;$F2::
;{
;	pickUp()
	;click
	;MouseGetPos, xpos, ypos 
	;ms := getMs(getDistance(960, 505, xpos, ypos))
	;Sleep, ms
	;
	;MsgBox, 11111
;}
;return


getDistance(x1, y1, x2, y2){
	x3:=x2
	y3:=y1
	t1:=Abs(x1 - x3) *  Abs(x1 - x3) 
	t2:=Abs(y2 - y3) * Abs(y2 - y3)
	t3:=Sqrt(t1 + t2)
	return t3
	;MsgBox, %y1% %y3%  %x3% %y3%  %t1% %t2% %t3%
	
}

getMs(distance){
	; 500距离=2000ms  1600-2000
	d := distance / 500 * 1700
	return d
	;MsgBox, %d%

}

MouseLButton1:
{
	global v_loop
	if(v_loop = 1){
		MouseMove, 960,  393
		Click Left ;点击鼠标左键键 
		Sleep, 50
		MouseMove, 960,  510
		Click Left ;点击鼠标左键键 
	}
	

}
Return 



$left::
{
	if(!v_number_key){
		return
	}
	v_loop:=1
	pickUp()
	destroyGui()
	
}
return