;pickUp(){
;}
#Include public.ahk

pickUp(){
	showMsg("自动捡装备")
	global dm
	global v_loop
	
	dm:=getBm()
 
	pos1:= dm.FindPicE(	0, 0, 	1920, 1080, getPicName(),"000000", 0.93 ,0)
 
 
 	;pos1:= dm.FindPicE(	0, 0, 	1920, 1080, "C:\Users\Chen\Desktop\dm\gameimg\传奇.胸甲","000000", 0.4 ,0)
 
 
	;|C:\Users\Chen\Desktop\dm\gameimg\传奇消耗品.bmp
	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]
 
    ;MsgBox % Array[A_Index]
	
    ;MsgBox, %% %x1%  %y1% %Array%
	if(x1 = -1){
		showMsg("找不到")
		return -1
	}
	
	if(x1 > 0 and v_loop = 1){
		x1:=x1+10
		y1:=y1+5
		v_msg:=x1 "," y1 
		showMsg(v_msg)
		 
		Click, %x1%,  %y1%
		Sleep, 50
	
		d := getDistance(960, 505, x1, y1)
		ms := getMs(d)
		Sleep, ms
		if(v_loop = 1){
			if(d<100){
			Click, %x1%,  %y1%, 5
			Sleep, 100
			Click, %x1%,  %y1%, 5
			Sleep, 100
			Click, %x1%,  %y1%, 5
			}else{
				Click, %x1%,  %y1%
			}
		}
		
		MouseMove, 950, 250
		;MouseMove, 960,  500
		;Click, 960,  500, 5
		;Sleep, 300
		;原地捡1s
		;SetTimer, MouseLButton1, 150 ;鼠标左键150毫秒连点，150可改动
		;Sleep,  500
		;SetTimer, MouseLButton1, off ;关闭左键连点计时器，off不可改动
		 
		;Click, 960,  500
		if(v_loop = 1){
			Sleep, 200
			pickUp()
		}
		
	}
}

getBm(){
	global dm
	global v_loop
	
	if(!dm.ver()){
		dm:=ComObjCreate("dm.dmsoft")
		
		showMsg("重新加载dm" dm.ver())
		destroyGui(200)
	} 
	return dm
}

getPicName(){

	return "C:\Users\Chen\Desktop\dm\gameimg\传奇.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手武器.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护臂.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇戒指.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇手套.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇项链.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇腰带.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装手套.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装鞋子.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇头盔.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手斧.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手斧.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护盾.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手剑.bmp|C:\Users\Chen\Desktop\dm\gameimg\萦雾水晶.bmp|C:\Users\Chen\Desktop\dm\gameimg\奥尘之土.bmp|C:\Users\Chen\Desktop\dm\gameimg\万用材料.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手连枷.bmp|C:\Users\Chen\Desktop\dm\gameimg\黄装戒子.bmp|C:\Users\Chen\Desktop\dm\gameimg\贵族黄钻石.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇胸甲.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇匕首.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手连枷2.bmp|C:\Users\Chen\Desktop\dm\gameimg\黄装双手弩.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装项链.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装护肩.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装远古.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇匕首1.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装单手剑.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇项链1.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇药水.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇消耗品.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护臂1.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装戒子.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装裤子.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇裤子.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装盾牌.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装连枷.bmp"
	
	
	;|C:\Users\Chen\Desktop\dm\gameimg\套装连枷.bmp
}


;776242;A55F1D
$k::
{
	showMsg("寻找乌什尔")
	global dm
	global v_loop
	
	dm:=getBm()
 
	pos1:= dm.FindPicE(	0, 0, 	1920, 1080, "C:\Users\Chen\Desktop\dm\gameimg\乌尔什1.bmp|C:\Users\Chen\Desktop\dm\gameimg\乌尔什2.bmp|C:\Users\Chen\Desktop\dm\gameimg\乌尔什3.bmp|C:\Users\Chen\Desktop\dm\gameimg\乌尔什4.bmp|C:\Users\Chen\Desktop\dm\gameimg\乌尔什5.bmp|C:\Users\Chen\Desktop\dm\gameimg\乌尔什6.bmp|C:\Users\Chen\Desktop\dm\gameimg\乌尔什7.bmp","000000", 0.43 ,0)
 
 
	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]
 
    
	if(x1 = -1){
		showMsg("找不到")
	 
	}
	
	if(x1 > 0 and v_loop = 1){
		 
		showMsg(v_msg)
		 
		Click, %x1%,  %y1%
		 
	}
	destroyGui()
}
return

$del::
{
	v_loop := 1
	showMsg("新版自动捡装备")
    newPickUp()
	destroyGui()
}
return

newPickUp(){
	
 	global dm
	global v_loop
	
	dm:=getBm()
 	pos1:= dm.FindPicEx(0, 0, 	1920, 1080, getPicName(),"000000", 0.93 ,0)
	if(StrLen(pos1) > 0){
	}else{
		showMsg("找不到")
	}
	Array := StrSplit(pos1 , "|")
	newx := 0
	newy := 0
	Loop % Array.Length()
	{
		posion := % array[A_Index]
		
		posion := StrSplit(posion , ",")
		x1 := posion[2]
		y1 := posion[3]
		
		
		distance := getDistance(x1, y1)
		
		;MsgBox, %distance% %x1% %y1%
		;Click, %x1%,  %y1%
		
		if(v_loop = 1){
			; 小于100 直接捡
			if(distance < 100){
				v_msg:=x1 "," y1 
				showMsg(v_msg)
				Click, %x1%,  %y1%
				MouseMove, 950, 250
				Array.RemoveAt(A_Index)
			}else{
				newx := x1
				newy := y1
			}
		}
		
		
		;Click
	}
	if(Array.Length() > 0 and v_loop = 1){
		if(newx > 0 or newy > 0){
			Click, %newx%,  %newy%
			MouseMove, 950, 250
			ms := getMs(getDistance(newx, newy))
			Sleep, ms
			newPickUp()
			
		}
	}
 
}


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

;960, 505, 1383, 231   500距离=2000ms 
getDistance(x1, y1, x2 = 960, y2 = 505){
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