Run, 消息通知.exe
;#MaxThreads 5
#IfWinActive,ahk_class D3 Main Window Class 
;#maxThreadsPerHotkey, 2
;#MaxMem 10

SetKeyDelay,1
SetMouseDelay,1

#Include 显示通知.ahk

#Include 金钟武僧.ahk

v_skill_flag:=0
 
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
start() {
 
	global v_skill_flag
	showMsg("开启 技能")
	MonkSkillStart()
	v_skill_flag:=1
	
}

return
stop() {

	global v_skill_flag
 
	 
		showMsg("关闭 技能")
 
		MonkSkillStop()
 
 

	v_skill_flag:=0
 
	
}
return



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