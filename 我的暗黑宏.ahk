#SingleInstance Force
#MaxThreads 255

;Run, 杀死脚本.bat
;Sleep, 2000
;Run, 消息通知.exe
;#MaxThreads 5
#IfWinActive,ahk_class D3 Main Window Class 
;#maxThreadsPerHotkey, 2
#MaxThreadsPerHotkey  20
#MaxThreadsBuffer On
#MaxMem 4095

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
v_current_hero:=1 ;当前英雄 1=圣教军 2=魔法师 3=武僧 4=奶僧
v_current_hero_name:="圣教军" 
v_skill_state:=0 ;技能符文开关 0=吸 1=顺爆
v_trg:=1 ;脚本总开关

 loadConfigFIle()
;showMsg(v_trg  "   关")

v_change_weapon:=0 ;武僧切换装备开关
#Include CommonLabel.ahk
#Include CommonKey.ahk
#Include CommonFunction.ahk
#Include 小键盘功能键.ahk
#Include 方向键功能键.ahk
#Include 显示通知.ahk
#Include 魔法师.ahk
#Include 金钟武僧.ahk
#Include 散件火种.ahk
#Include 奶僧.ahk
#Include 圣教军天谴.ahk
#Include 不朽野蛮人.ahk
#Include 切换游戏.ahk
#Include 幻魔荆棘.ahk
#Include 猎魔.ahk
#Include 切换英雄.ahk
#Include 加载配置.ahk


var_msg_num:=0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; keyStart



#if WinActive("ahk_class D3 Main Window Class")
$NumpadEnter::
{
	 
	global v_trg
	;MsgBox, %v_trg%
	If (v_trg=0) 
	{ 
		showMsg("开")
		v_trg:=1
	}else{
		showMsg("关")
		v_trg:=0
	}
	
}
return
#If

#if v_trg = 1 and WinActive("ahk_class D3 Main Window Class")

 
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


 
$del::
{
	v_loop := 1
	showMsg("新版自动捡装备")
    newPickUp()
	
}
return
times:=18

;自动同意
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
		Sleep, 1000
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
			if(times = 1){
				SoundBeep, 1523, 5000
			}
			ts := times / 3
			if(ts = 1){
			 
				SoundBeep, 1523, 5000
				
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


$F1:: ; 连点鼠标左键 捡东西
{ 
	if(!v_number_key){
		return
	}
	if(v_aotu_pick=0){
		showMsg("开启鼠标左键连点")
		SetTimer, MouseLButton, 50 ;鼠标左键150毫秒连点，150可改动
		v_aotu_pick:=1
	}else{
		showMsg("关闭鼠标左键连点")
		v_aotu_pick:=0
		SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	}
	
} 
Return  
 
~F2:: ; 循环点击25次右键
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
	
} 
Return 

v_tt_skill:=0
; 修改巅峰
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
		Click, 1277, 427, 30
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
		Click, 1278, 334, 30
		Sleep, 50
		Send, {Ctrl up}
		Sleep, 50
		Click, 829, 814
	}
 
	MouseMove, x1, y1
	BlockInput off
	;movetocenter()
	
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
	
}
Return


; 小号回城
$Home::
{
	changeWin(5)	
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

#if