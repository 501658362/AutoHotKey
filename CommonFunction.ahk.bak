;移动到屏幕中心
moveToCenter() {
	global v_center_x 
	global v_center_y
	global v_c_x
	global v_c_y
	if(v_c_x > 0 and v_c_y > 0 ){
		MouseMove v_c_x, v_c_y, 0
		;设置为0 以便下次调用
		v_c_x:=0 ; 
		v_c_y:=0 ; 
		
	}else{
		MouseMove v_center_x, v_center_y, 0
	}

	
}

; 关闭输入框
closeChatInput() {
	
	global v_chat_icon_x
	global v_chat_icon_y
	Sleep, 200
	PixelGetColor, color, v_chat_icon_x, v_chat_icon_y
	if(color=0x008CCBFF){
		Send {enter}
	}
}



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




;去第一幕
gotoFirstA(){
	Send, M
	Sleep, 50
	Click, 900, 130
	Sleep, 50
	Click, 740, 620
	Sleep, 50
	Click, 1023, 485
}

; 修改英雄 1是魔法师 2是圣教军
changeHero(x){
	global v_current_hero
	global v_current_hero_name
	if(x = 1){  
		showMsg("修改英雄为魔法师")
		v_current_hero:=2 ;当前英雄 1=圣教军 2=魔法师 3=武僧
		v_current_hero_name:="魔法师"
	}else if (x = 2){
		showMsg("修改英雄为圣教军")
		v_current_hero:=1 ;当前英雄 1=圣教军 2=魔法师 3=武僧
		v_current_hero_name:="圣教军"
	}

	
	global v_loop
	
	Send, {Esc}
	Sleep, 1000
	; 离开游戏
	Click, 241, 482
	Sleep, 5000
	if(v_loop = 1){
		; 修改英雄
		Click, 956, 929
		Sleep, 1500
		if(x = 1){ 
			; 选择魔法师
			MouseMove, 230, 226, 50
		 
		}else if (x = 2){
			; 选择圣教军
			MouseMove, 242, 322, 50
		 
		}
 
		Click, 2
		Sleep, 1000
	}

	if(v_loop = 1){
		
		; 回到游戏
		Click, 268, 517
		Sleep, 1000
		gotoFirstA()
	}
	

}

; 传送我这
moveToMe(){
	MouseMove, 64, 247 ,2

	Sleep, 50  ; 
	Click right ;  

	MouseMove, 143, 402 ,2
		
	Sleep, 200  ;
	Click Left ;  
	MouseMove, v_center_x, v_center_y, 2

}

; 切换窗口 并执行相应的事件
; 1=开启大秘境 其他角色接受
; 2=传送至我这 多个角色传送我这
; 3=多个角色升级宝石
; 4=小号扔装备
; 5=
changeWin(x = 1){
	
	global v_loop
	global v_current_hero
	stop()
	var_firstPId:=0
	;获取暗黑的游戏窗口
	WinGet, id, list, ahk_class D3 Main Window Class,, Program Manager
	
	Loop, %id%
	{	
		;获取pid
		this_id := id%A_Index%
		
		; 前置参数
		if(A_Index = 1){ 
			var_firstPId := id%A_Index%
		}
		if(A_Index > 1){
		}
		
		
		; 执行方法
		if(x = 1){
			showMsg("开启大秘境 其他角色接受")
			; 开启大秘境 其他角色接受
			if(A_Index = 1){
				Sleep, 50
				;点击大秘境
				Click, 270, 480
				Sleep, 50
				;点击开启
				Click, 270, 846
			}else{
				;跳转其他窗口
				WinActivate, ahk_id %this_id%
				;接受
				Sleep, 400
				Click, 970, 805 
				Sleep, 100
				Click, 970, 805 
			}
			

		}else if(x = 2){
			; 传送至我这 多个角色传送我这
			showMsg("传送至我这 多个角色传送我这")
			if(A_Index > 1){
				;跳转其他窗口
				WinActivate, ahk_id %this_id%
				Sleep, 100
				moveToMe()
				Sleep, 10
			}
		}else if(x = 3){
			; 多个角色升级宝石
			showMsg("多个角色升级宝石")
			BlockInput On
			v_loop:=1 
			
			v_loopTime:=5
			if(A_Index > 1){
				v_loopTime:=4
				;跳转其他窗口
				WinActivate, ahk_id %this_id%
			}
			Loop, %v_loopTime%
			{
				;MsgBox, %A_Index%
				updateGem(A_Index , v_loopTime)
			}
			Sleep, 100
			Send {T}
			BlockInput Off
			
		}else if(x = 4){
			showMsg("小号扔装备")
			;小号扔装备
 
			if(A_Index > 1){
				;跳转窗口 
				WinActivate, ahk_id %this_id%
			
				;先退出 一些窗口避免无法扔东西
				Send {esc} 
				Sleep, 500
				PixelGetColor, color, 68, 133 
				if(color = 0xDEEEF8){
					Send {esc}
				}
				Sleep, 100
				Send, {C}
				Sleep, 300
				;扔装备
				v_loop:=1 
				knock(2) 
				Sleep, 300
			}
		
		}else if(x = 5){
			showMsg("小号回城")
			;小号扔装备
			
			if(A_Index > 1){
				;跳转窗口 
				WinActivate, ahk_id %this_id%
			 
				;if(v_current_hero = 3){
					;Click, Right
				;}else{
					;Send, {e}
					;Send, {r}
				;}
		 
				 Sleep,50
				Send, {T} 
			}else{
				Send, {e}
			}
		}
	}
	;跳转窗口 切回第一个游戏
	WinActivate, ahk_id %var_firstPId%

	if(x = 5){
		start()
	}
	showMsg("已切回第一个游戏", 100)
	moveToCenter() 
	
	
}
 
 
newUpdateGem(x = 0){
	; 多个角色升级宝石 改进版
	showMsg("多个角色升级宝石 改进版")
	
	global v_loop
	stop()
	var_firstPId:=0
	;获取暗黑的游戏窗口
	WinGet, id, list, ahk_class D3 Main Window Class,, Program Manager
	v_loop:=1 
	Loop, 5
	{
		v_outIndex:=A_Index
			Loop, %id%
			{
				;获取pid
				this_id := id%A_Index%
				if(v_loop = 1){
					
					WinActivate, ahk_id %this_id%
					Sleep, 100 ; 
					updateSingleGem() 
					Sleep, 100 ; 
					;if(v_outIndex = 4 and A_Index < 3){
					;	MsgBox, 回 %v_outIndex% %A_Index%
					;	Send {T}
					;}else{
					;	
					;	updateSingleGem() 
					;	MsgBox, 升级 %v_outIndex% %A_Index%
					;}
					if(v_outIndex = 5){
						;MsgBox, 回 %v_outIndex% %A_Index%
						Send {T}
					}
					
	  
				}
				
			}
	}
 
}

;更新一次宝石
updateSingleGem(){
	MouseMove, 269, 548 ,2
	Sleep, 100 ; 
	Click Left ; 
}
 
;升级宝石
updateGem(index, max){
	global v_loop
	if(v_loop=1){
		MouseMove, 269, 548 ,2
		Sleep, 50  ; 
		Click Left ; 
		if(index != max){
			Sleep, 1650 ; 1.7 秒
		}
	
	}
}
 

start() {
	global v_current_hero
	global v_current_hero_name
	global v_skill_flag
	global v_loop
	
	showMsg("开启" v_current_hero_name "技能")
	
 
	if(v_current_hero = 2){
		v_loop:=1
		SetTimer, WizardSkill, 100
	}else if (v_current_hero = 3){ 
		MonkSkillStart()
	}else if (v_current_hero = 4){ 
		naiMonkSkillStart()
	}else{
		CrusaderSkillStart()
	}
	
	v_skill_flag:=1
	
}

stop() {

	global v_skill_flag
	global v_loop
	global v_comisson
	global v_aotu_pick
	global v_current_hero_name
	global v_current_hero
	
	
	if(v_skill_flag = 1){
		showMsg("关闭" v_current_hero_name "技能")
	}
	if(v_current_hero = 2){
		v_loop:=0
		SetTimer, WizardSkill, off
	}else if (v_current_hero = 3){
		MonkSkillStop()
	}else if (v_current_hero = 4){
		naiMonkSkillStop()
	}else{
		CrusaderSkillStop()
	}
 

	v_skill_flag:=0
	v_aotu_pick:=0
	
	
}

;主动开启
clickStart(x) {
	If (x=0){
		;MsgBox, Text1
	}
	Else{ 
		start()
	}
}

;战马方法
runFast(x) {
	If (x=0){
		;MsgBox, Text1
	}
	Else{
		;MsgBox, Text2
		stop()
		Send {space down} ;按住强制移动键x，x可改动
		Sleep, 2800  ; 2.8 秒
		start()
	}
}



updateWeapon(x) {
	Click Right ;
	;MouseMove, 722, 839, 0

	DllCall("SetCursorPos", int, 722, int, 839)
		Sleep, 100
	Click Left ;
	Sleep, 100
	;MouseMove, 247, 834, 0
	DllCall("SetCursorPos", int, 247, int, 834)
		Sleep, 100
	Click Left ;
	Sleep, 2200  ;.5 秒
		Sleep, 100
	Click Left ; 
	;MouseMove, 1540, 612 , 0

	;MsgBox, %x%
	 
}
movem(x) {
	DllCall("SetCursorPos", int, 1540, int, 612)
}



; 敲碎或者扔到地上
killIt(x) {
	global v_drop_x
	global v_drop_y
	global v_chat_icon_x
	global v_chat_icon_y 
	;MouseGetPos, MouseX, MouseY
	;PixelGetColor, color, %MouseX%, %MouseY% 
	;if(color!=0x00080D10){ 
		if(x=1){
			
			Send {enter}
			Click Left ;
			
			Send {enter}
		}else{
			Click, down  ;
			MouseMove, v_drop_x, v_drop_y, 0
			Click, up  ;
		}
	;}
} 

; 循环执行 敲碎或者扔到地上
knock(x) {

	global v_loop
	global v_package_x_p
	global v_package_y_p
	global v_package_x_to_x
	global v_package_y_to_y
	global v_change_weapon
	v_cp:=v_package_x_p
	v_c_y:=v_package_y_p
	
	var_loop_time:=6
	if(v_change_weapon){
		var_loop_time:=4
	}
	Loop, %var_loop_time%{
		Loop, 8
		{
			
			if(v_loop=1){
				MouseMove, v_cp, v_c_y, 0
				v_cp:=v_cp+v_package_x_to_x
				killIt(x)
			}

		}
		v_cp:=v_package_x_p
		v_c_y:=v_c_y+v_package_y_to_y
	}
 
}

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
 
 
getBm(){
	global dm
	global v_loop
	
	if(!dm.ver()){
		dm:=ComObjCreate("dm.dmsoft")
		
		showMsg("重新加载dm" dm.ver())
	} 
	return dm
}

getPicName(){

	return "C:\Users\Chen\Desktop\dm\gameimg\传奇.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手武器.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护臂.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇戒指.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇手套.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇项链.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇腰带.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装手套.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装鞋子.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇头盔.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手斧.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手斧.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护盾.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇单手剑.bmp|C:\Users\Chen\Desktop\dm\gameimg\萦雾水晶.bmp|C:\Users\Chen\Desktop\dm\gameimg\奥尘之土.bmp|C:\Users\Chen\Desktop\dm\gameimg\万用材料.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手连枷.bmp|C:\Users\Chen\Desktop\dm\gameimg\黄装戒子.bmp|C:\Users\Chen\Desktop\dm\gameimg\贵族黄钻石.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇胸甲.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇匕首.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇双手连枷2.bmp|C:\Users\Chen\Desktop\dm\gameimg\黄装双手弩.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装项链.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装护肩.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装远古.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇匕首1.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装单手剑.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇项链1.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇药水.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇消耗品.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇护臂1.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装戒子.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装裤子.bmp|C:\Users\Chen\Desktop\dm\gameimg\传奇裤子.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装盾牌.bmp|C:\Users\Chen\Desktop\dm\gameimg\套装连枷.bmp"
	
	
	;|C:\Users\Chen\Desktop\dm\gameimg\套装连枷.bmp
}

changeHeroSkill(x = 0){
	global v_current_hero
	global v_current_hero_name
	v_current_hero:=x ;当前英雄 1=圣教军 2=魔法师 3=武僧 4=奶僧
	stop()
	if(x = 1){
		v_current_hero_name:="圣教军"
	}else if(x = 2){
		v_current_hero_name:="魔法师"
	}else if (x = 3){
		v_current_hero_name:="武僧"
	}else if (x = 4){
		v_current_hero_name:="奶僧"
	}else{
		v_current_hero_name:="圣教军"
	}
	showMsg("切换" v_current_hero_name "技能")
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


; 批量升级黄装
forEachUpdate(x = 1){
 
	global v_loop
	global v_package_x_p
	global v_package_y_p
	global v_package_x_to_x
	global v_package_y_to_y
	global v_number_key
	if(!v_number_key){
		return
	}
	var_row:=0
	if(x = 1){
		showMsg("批量升级单格稀有装备")
		var_row:=6
	}else{
		var_row:=3
		showMsg("批量升级双格稀有装备")
	}
	
	 


	v_cp:=v_package_x_p
	v_c_y:=v_package_y_p
	v_loop:=1
	Loop, %var_row%{
		Loop, 8
		{
			
			if(v_loop=1){
				MouseMove, v_cp, v_c_y, 0
				v_cp:=v_cp+v_package_x_to_x
				updateWeapon(v_cp)
				Click Right ;
			}
		}
		v_cp:=v_package_x_p
		if(x = 1){
			v_c_y:=v_c_y+v_package_y_to_y
		}else{
			v_c_y:=v_c_y+v_package_y_to_y+v_package_y_to_y
		}
	}
}

