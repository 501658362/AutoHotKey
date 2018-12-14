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

~q::
{

	;MouseGetPos, xpos, ypos 
	Sleep, 200
	 send, i
	;MouseClick, right, xpos+200, ypos
	Sleep, 50
	 send, a
	Click 
	;MouseClick, right, xpos, ypos
}
return

~m::
{

	MouseMove, 200,200,2, R
	Click right
	Sleep, 50
	MouseMove, -200,-200,1, R
	Send,a
	Click
	;MouseGetPos, xpos, ypos 
	;;Sleep, 200
	;; send, i
	;MouseClick, right, xpos+200, ypos
	;Sleep, 50
	;Click right
	;
	;MouseClick, right, xpos, ypos
}
return

$^t::
{
  Reload 
}
return