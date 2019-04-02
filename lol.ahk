#SingleInstance Force

Loop, %0% ; For each parameter:
{
param := %A_Index% ; Fetch the contents of the variable whose name is contained in A_Index.
params .= A_Space . param
}
ShellExecute := A_IsUnicode ? "shell32\ShellExecute":"shell32\ShellExecuteA"
if not A_IsAdmin
{
If A_IsCompiled
DllCall(ShellExecute, uint, 0, str, "RunAs", str, A_ScriptFullPath, str, params , str, A_WorkingDir, int, 1)
Else
DllCall(ShellExecute, uint, 0, str, "RunAs", str, A_AhkPath, str, """" . A_ScriptFullPath . """" . A_Space . params, str, A_WorkingDir, int, 1)
ExitApp
 
}

;#if WinActive("ahk_class RiotWindowClass")


#Include CommonLabel.ahk
#Include 显示通知.ahk
v_skill_flag:=0
CrusaderSkillStart(){
	global v_skill_flag
	v_skill_flag:=1
	;SetTimer, Label1, 100 ;动作条技能1键600毫秒连点， 
	SetTimer, Label2, 100 ;动作条技能2键600毫秒连点 
	;SetTimer, Label3, 100 ;动作条技能3键600毫秒连 
	;SetTimer, Label4, 100 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
	;SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
	;SetTimer, MouseRButton, 500 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
	;Send {space down} ;按住强制移动键x，x可改动
	return
}

CrusaderSkillStop(){
	global v_skill_flag
	v_skill_flag:=0
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
	;Send {space up} ;松开强制移动键x，x可改动
	return
}
 v_skill_flag:=1
/**  
$r::
{
		CrusaderSkillStop()
		Send, R
}
return

 */
$XButton1:: ; 技能开关键， 
{ 
global v_skill_flag
	 
	If (v_skill_flag!=1) 
	{
		showMsg("kai")
		CrusaderSkillStart()
	} 
	Else 
	{
		showMsg("guan")
		CrusaderSkillStop()
	}
} 
Return 



~^r::
{
  showMsg("启动脚本", 100)
  Run, lol.ahk
}
return
;#if