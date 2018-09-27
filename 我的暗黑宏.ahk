;Run, 杀死脚本.bat
;Sleep, 2000
Run, 消息通知.exe


#IfWinActive,ahk_class D3 Main Window Class 
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
v_current_hero:=1 ;当前英雄 1=圣教军 2=魔法师 3=武僧
v_current_hero_name:="圣教军" 
v_skill_state:=0 ;技能符文开关 0=吸 1=顺爆

#Include 魔法师.ahk
#Include 金钟武僧.ahk

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
					Send, {e}
					Send, {r}
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
	
 
	if(v_current_hero = 2){
		v_loop:=1
		SetTimer, WizardSkill, 100
	}else if (v_current_hero = 3){ 
		MonkSkillStart()
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
	if(v_current_hero = 2){
		v_loop:=0
		SetTimer, WizardSkill, off
	}else if (v_current_hero = 3){
		MonkSkillStop()
	}else{
		CrusaderSkillStop()
	}
 

	v_skill_flag:=0
	v_aotu_pick:=0
	
	destroyGui()
}


CrusaderSkillStart(){
	
	SetTimer, Label1, 100 ;动作条技能1键600毫秒连点，对应天谴技能，600可改动
	SetTimer, Label2, 600 ;动作条技能2键600毫秒连点关闭挑衅自动按，600可改动，这里建议还是开启自动按
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
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
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
	if(StrLen(str) = 0){
		return
	}

	
	global v_c_x
	global v_c_y
	
	if(v_c_x = 0 or v_c_y = 0){
		MouseGetPos, MouseX, MouseY
		v_c_x := MouseX
		v_c_y := MouseY
	}
 
	FileDelete, msg.txt
	FileAppend, %str%,  msg.txt
 
}
destroyGui(ms = 500){ 
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

changeHeroSkill(x = 0){
	global v_current_hero
	global v_current_hero_name
	v_current_hero:=x ;当前英雄 1=圣教军 2=魔法师 3=武僧
	if(x = 1){
		v_current_hero_name:="圣教军"
	}else if(x = 2){
		v_current_hero_name:="魔法师"
	}else if (x = 3){
		v_current_hero_name:="武僧"
	}else{
		v_current_hero_name:="圣教军"
	}
	showMsg("切换" v_current_hero_name "技能")
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; keyStart

v_trg=:0

$NumpadEnter::
{
	 
	global v_trg
	;MsgBox, %v_trg%
	If (v_trg=0) 
	{ 
		showMsg("关")
		v_trg:=1
	}else{
		showMsg("开")
		v_trg:=0
	}
		destroyGui()
	
}
return
SendLevel 1
Send {NumpadEnter}

#if v_trg = 0 and WinActive("ahk_class D3 Main Window Class")


$^1::
{
	changeHeroSkill(1)
}
return

$^2::
{
	changeHeroSkill(2)
}
return

$^3::
{
	changeHeroSkill(3)
}
return


;$k::
;{
; 
;	;获取暗黑的游戏窗口
;	WinGet, id, list, ahk_class D3 Main Window Class,, Program Manager
;	v_c:= 	id%2%
;		v_c:= 	id%%
;	MsgBox, %v_c%
;	WinActivate, ahk_id %v_c%
;}
;return
$del::
{
	v_loop := 1
	showMsg("新版自动捡装备")
    newPickUp()
	destroyGui()
}
return
times:=18
$end::
{
	global dm
	
	global times
	global v_loop
	
	v_loop := 1
	showMsg("自动同意")
	times:=0
	dm:=getBm() 
	while(v_loop = 1){
		pos1:= dm.FindPicE(1449, 697, 1883, 1047, "C:\Users\Chen\Desktop\dm\gameimg\接受邀请.bmp|C:\Users\Chen\Desktop\dm\gameimg\接受邀请1.bmp","000000", 0.53 ,0)

		Array := StrSplit(pos1 , "|")
		x1:=Array[2]
		y1:=Array[3]
		if(x1 = -1){
			showMsg("找不到" times)
			
		}else{
			times++
			showMsg("找到了" times)
			;MsgBox, "找到了"
			x1:=x1+10
			y1:=y1+5
			Click, %x1%,  %y1%
			Sleep, 100
			Click, %x1%,  %y1%
			Sleep, 100
			Send {enter}
			moveToCenter()
			ts := times / 6
			if(ts = 1){
			 
				SoundBeep, 1523, 10000
				
			}else{
							
				;SoundPlay *-1 
				;Sleep, 1000
				;SoundPlay *-1 
				;Sleep, 1000
				;SoundPlay *-1 
				;Sleep, 1000
				;SoundPlay *-1 
			}
		}
	}
	 
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
	if(x = 1){
		showMsg("批量升级单格稀有装备")
	}else{
		showMsg("批量升级双格稀有装备")
	}
	
	 


	v_cp:=v_package_x_p
	v_c_y:=v_package_y_p
	v_loop:=1
	Loop, 6{
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
 
 
	 
	destroyGui()
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
 


$NumpadIns:: ; 分解普通材料 0
{   
	if(v_number_key = 1){
		showMsg("分解普通材料")
		MouseMove, 250, 290 ,2
		Click Left ;  
		Send {enter} 
		Send {enter} 
		
		
		MouseMove, 320, 290 ,2
		Click Left ;  
		Send {enter} 
		Send {enter} 

		
		MouseMove, 380, 290 ,2
		Click Left ;  
		Send {enter} 
		Send {enter} 
		
		moveToCenter()
		closeChatInput()
		
		destroyGui()
	}

} 
Return  
$NumpadEnd:: ; 停止循环 1
{ 
	if(!v_number_key){
		return
	}
 	showMsg("停止循环")
	v_loop:=0	
	destroyGui()
} 
Return  



$NumpadDown:: ; 升级宝石 5次 2
{ 
	if(!v_number_key){
		return
	}
	showMsg("升级宝石 5次")
	v_loop:=1
	Click Left ; 
	Loop, 5
	{
		updateGem(A_Index, 5)
	}
	Send {T}
	destroyGui()
} 
Return  
 


$NumpadPgDn:: ; 传送到我这 3
{  
	if(!v_number_key){
		return
	}
	showMsg("传送到我这")
	moveToMe()
	destroyGui()
} 
Return  


$F1:: ; 连点鼠标左键 捡东西
{ 
	if(!v_number_key){
		return
	}
	if(v_aotu_pick=0){
		showMsg("开启鼠标左键连点")
		SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
		v_aotu_pick:=1
	}else{
		showMsg("关闭鼠标左键连点")
		v_aotu_pick:=0
		SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	}
	destroyGui()
} 
Return  
 

$NumpadLeft:: ; 批量升级双格稀有装备 4
{
	forEachUpdate(2)
}
return

$NumpadClear:: ; 批量升级单格稀有装备 5
{ 

	forEachUpdate(1)
} 
Return 


$NumpadRight:: ;悬赏开关键 6
{ 
	
	if(!v_number_key){
		return
	}
	v_comisson:=!v_comisson 
	if(v_comisson = 1){
		showMsg("悬赏开")
	}else{
		showMsg("悬赏关")
	}

	destroyGui()
} 
Return 

$NumpadHome:: ;循环点击25次右键 7
$F2:: ; 循环点击25次右键
{ 
	
	if(!v_number_key){
		return
	}
	showMsg("循环点击25次右键")
	Loop, 25
	{
		Click Right ;点击鼠标右键 
		Sleep, 10
	}
	destroyGui()
} 
Return 

$NumpadUp:: ;附魔   8 
{
	Click, 161, 391
	Sleep, 50
	Click, 272, 785
	Sleep, 50
	Click, 272, 785
	
	
}
return	
$NumpadAdd:: ;批量敲碎装备   +
{  
	if(!v_number_key){
		return
	}
	showMsg("批量敲碎装备")
	MouseMove, v_decompose_x, v_decompose_y ,0
	Click Left ; 
	v_loop:=1
	knock(1)

	closeChatInput()
	
	moveToCenter()
	
	Click Right ; 
	destroyGui()
} 
Return 


$NumpadPgUp:: ; 重铸装备 9
{ 

	showMsg("重铸装备")
	Click, 720, 843
	Sleep, 50
	Click, 239, 827
	MouseMove, 1538, 600
	;SetTimer, MouseRButton, 20650
} 
Return 

$NumpadSub:: ; 批量扔装备 -
{
	if(!v_number_key){
		return
	}
	showMsg("批量扔装备")
	v_loop:=1 
	knock(2) 
	destroyGui()
}
return


$NumpadMult:: ;重启导航插件 *
{	
	if(!v_number_key){
		return
	}
	showMsg("重启导航插件")

	Send {end up}
	Run, 杀死导航.bat
	Sleep, 1000
	run C:\Users\Chen\Desktop\TurboHUDEn\TurboHUD.exe
	destroyGui()
}
Return 

$NumpadDiv:: ;移动到第一幕 /
{
	if(!v_number_key){
		return
	}
	showMsg("移动到第一幕")
	gotoFirstA()
	destroyGui()
}
Return 
 
; 切换英雄  1是魔法师 2是圣教军
$Right::
if right_presses > 0 ; SetTimer 已经启动, 所以我们记录键击.
{
    right_presses += 1
    return
}
; 否则, 这是新开始系列中的首次按下. 把次数设为 1 并启动
; 计时器:
right_presses = 1
SetTimer, RightPause, -400 ; 在 400 毫秒内等待更多的键击.
return
RightPause:
v_loop:=1
changeHero(right_presses) 
; 不论触发了上面的哪个动作, 都对 count 进行重置
; 为下一个系列的按下做准备:
right_presses = 0
return


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

; 小号扔装备
$down::
{
	if(!v_number_key){
		return
	}
	showMsg("小号扔装备")
	changeWin(4)
	moveToCenter() 
	destroyGui()
}
return

$up::
{
	
	if(!v_number_key){
		return
	}
	showMsg("升级宝石")
	; 升级宝石
	newUpdateGem(3) 
	destroyGui()
}
return


~RButton:: ;
{ 
	runFast(v_comisson)
}
Return

~LButton:: ;
{ 
	clickStart(v_comisson)
}
Return

v_tt_skill:=0
; 圣教军天谴符文替换
$CapsLock::
{ 
	MouseGetPos, x1, y1
	BlockInput On
	if(v_tt_skill = 0){
		v_tt_skill := 1
	}else{
		v_tt_skill := 0
	}
			;打开
		Send, {p}
		Sleep, 50
			;重置
		Click, 959, 724
	if(v_tt_skill = 1){
		showMsg("改体能")

	
		Sleep, 50
		;按ctrl
		Send, {Ctrl down}
		;升级体能
		Sleep, 50
		Click, 1277, 427, 10
		Sleep, 50
		Send, {Ctrl up}
		Sleep, 50
		Click, 829, 814
		

	}else{
		showMsg("改智力")
 
 
		Sleep, 50
		Send, {Ctrl down}
		Click, 1280, 615
		Click, 1272, 519
		Click, 1278, 334, 10
		Sleep, 50
		Send, {Ctrl up}
		Sleep, 50
		Click, 829, 814
	}
 
	MouseMove, x1, y1
	BlockInput off
	;movetocenter()
	destroyGui()
}
Return


; 圣教军天谴符文替换
$PgUp::
{
	if(!v_current_hero){
		;打开技能栏
		send, {s}
		;选择天谴
		Click, 1165, 380 
		if(v_skill_state){
			showMsg("天谴瞬爆")
			;选择顺爆
			Click, 892, 434
			 
		}else{
			showMsg("聚能强吸")
			; 聚能强吸
			Click, 744, 435
		}
		;接受
		Click, 850, 817
		; 关闭技能栏
		Click, 959, 817
		v_skill_state:=!v_skill_state
	}
	destroyGui()
}
Return


; 小号回城
$Home::
{
	changeWin(5)
	destroyGui()
}
Return

 

; 小键盘宏启用和关闭
$PgDn::
{
	v_number_key:=!v_number_key
	if(v_number_key){
		showMsg("小键盘宏启用")
	}else{
		showMsg("小键盘宏关闭")
	}
	destroyGui()
}
Return

 

;切换窗口 并执行相应的事件
; 1次 开启大秘境 和接受
; 2次 传送至我这
; 3次 升级宝石（小号升级4次）
$pause::
if pause_presses > 0 ; SetTimer 已经启动, 所以我们记录键击.
{
    pause_presses += 1
    return
}
; 否则, 这是新开始系列中的首次按下. 把次数设为 1 并启动
; 计时器:
pause_presses = 1
SetTimer, KeyPause, -400 ; 在 400 毫秒内等待更多的键击.
return
KeyPause:
changeWin(pause_presses) 
; 不论触发了上面的哪个动作, 都对 count 进行重置
; 为下一个系列的按下做准备:
pause_presses = 0
return

 
$XButton1:: ; 技能开关键， 
{ 
	 
	If (v_skill_flag=0) 
	{
		start()
	}
	Else 
	{
		stop()
	}
} 
Return 

#if