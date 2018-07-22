﻿#IfWinActive,ahk_class D3 Main Window Class 
 

#Include public.ahk
 
#Include pickup.ahk
#Include 小键盘功能键.ahk
 
#Include 方向键功能键.ahk 

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
		Click, 1277, 427, 5
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
		Click, 1278, 334, 5
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


#maxThreadsPerHotkey, 2 
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