﻿#IfWinActive,ahk_class D3 Main Window Class 
;#maxThreadsPerHotkey, 2 
SetKeyDelay,-1
SetMouseDelay,-1


v_comisson:=0 ;悬赏开关 开了用战马

v_aotu_pick:=0 ; 自动捡东西
v_loop:=0 ;停止循环

v_package_x_p:=1540 ;背包一个格的x坐标
v_package_y_p:=585 ;背包一个格的y坐标
v_package_x_to_x:=50 ; 背包两行中心点的距离
v_package_y_to_y:=50 ; 背包两列中心点的距离
v_drop_x:=856 ;扔物品的x坐标
v_drop_y:=374 ;扔物品的y坐标

v_c_x:=0 ;当前鼠标的x坐标
v_c_y:=0 ;当前鼠标的y坐标

v_center_x:=950 ;屏幕中心的x坐标
v_center_y:=500 ;屏幕中心的y坐标
v_decompose_x:=167 ;铁匠分解按钮的x坐标
v_decompose_y:=291 ;铁匠分解按钮的y坐标
v_chat_icon_x:=30 ;聊天icon的x坐标
v_chat_icon_y:=1050 ;聊天icon的y坐标

v_number_key:=1 ;小键盘和方向键功能开关 1=默认开； 0=关

v_skill_flag:=0 ;宏技能开关
v_current_hero:=0 ;当前英雄 0=圣教军 1=魔法师
v_current_hero_name:="圣教军"
if(v_current_hero=1){
	v_current_hero_name:="魔法师"
}
v_skill_state:=0 ;技能符文开关 0=吸 1=顺爆

#Include 魔法师.ahk

var_msg_num:=0

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
		v_current_hero:=1 ;当前英雄 0=圣教军 1=魔法师
		v_current_hero_name:="魔法师"
	}else if (x = 2){
		showMsg("修改英雄为圣教军")
		v_current_hero:=0 ;当前英雄 0=圣教军 1=魔法师
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
	destroyGui()

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
				  ;点击大秘境
				  Click, 270, 480
				  Sleep, 10
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
			Send, {e}
			if(A_Index > 1){
				;跳转窗口 
				WinActivate, ahk_id %this_id%
				Sleep, 100
				Send, {e}
				Send, {r}
				Send, {T} 
			}
		}
	}
	;跳转窗口 切回第一个游戏
	WinActivate, ahk_id %var_firstPId%
	showMsg("已切回第一个游戏", 100)
	moveToCenter() 
	destroyGui()
	
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
	
 
	if(v_current_hero = 1){
		v_loop:=1
		SetTimer, WizardSkill, 100
	}else{
		CrusaderSkillStart()
	}
	
	v_skill_flag:=1
	destroyGui()
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
	if(v_current_hero = 1){
		v_loop:=0
		SetTimer, WizardSkill, off
	}else{
		CrusaderSkillStop()
	}
 

	v_skill_flag:=0
	v_aotu_pick:=0
	
	destroyGui()
}


CrusaderSkillStart(){
	
	SetTimer, Label1, 100 ;动作条技能1键600毫秒连点，对应天谴技能，600可改动
	SetTimer, Label2, 250 ;动作条技能2键600毫秒连点关闭挑衅自动按，600可改动，这里建议还是开启自动按
	SetTimer, Label3, 20 ;动作条技能3键600毫秒连点关闭律法自动按，off可改动，
	SetTimer, Label4, 100 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
	SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
	;SetTimer, MouseRButton, 300 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
	Send {space down} ;按住强制移动键x，x可改动
}

CrusaderSkillStop(){
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	;SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
	Send {space up} ;松开强制移动键x，x可改动
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

	v_cp:=v_package_x_p
	v_c_y:=v_package_y_p

	Loop, 6{
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


;显示通知 
showMsg(str, y = 50){ 
	global v_c_x
	global v_c_y
	
	if(v_c_x = 0 or v_c_y = 0){
		MouseGetPos, MouseX, MouseY
		v_c_x := MouseX
		v_c_y := MouseY
	}

	
	Gui,Destroy
	;y := 50  ;y is the y-coordinate of the prompting window
 
    Gui, +AlwaysOnTop +Disabled -Caption -SysMenu +Owner +LastFound
    Gui, font, s26 cFF0000 w600, Verdana
    Gui, Color, FF0001
    WinSet, TransColor, FF0001
    Gui,Add,Text,BackgroundTrans,%str% 
    Gui, Show, NoActivate Y%y% NA, Title of Window
 
    ;Sleep, ms
    ;Gui, destroy
 
}
destroyGui(ms = 500){
	Sleep, ms
	Gui, destroy
}



~m:: ;回车打字关闭宏
{
stop()
v_comisson:=0
}
Return


~n:: ;回车打字关闭宏
{
stop()
v_comisson:=0
}
Return


~t:: ;回车打字关闭宏
{
stop()
v_comisson:=0
}
Return


~c:: ;回车打字关闭宏
{
stop()
v_comisson:=0
}
Return


~Enter:: ;回车打字关闭宏
{
stop()
v_comisson:=0
}
Return


Label1: 
{
Send {q} ;动作条技能1键对应按键,1可改动
Return
}

Label2: 
{
Send {w} ;动作条技能2键对应按键,2可改动
Return
}

Label3: 
{
Send {e} ;动作条技能3键对应按键,3可改动
Return
}

Label4: 
{
Send {r} ;动作条技能4键对应按键,4可改动
Return
}


MouseRButton:
{
Click Right ;点击鼠标右键 
Return
}
 
 
MouseLButton:
{
Click Left ;点击鼠标左键键 
Return
}



