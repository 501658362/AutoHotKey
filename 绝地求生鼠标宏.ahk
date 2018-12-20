v_trg:=0
 
 
$F5::
{
	 
	 
	;MsgBox, %v_trg%
	If (v_trg=0) 
	{ 
		showMsg("关")
		v_trg:=1
	}else{
		showMsg("开")
		v_trg:=0
	} 
	
}
return
#if v_trg = 0


~LButton::
{

Click
SetTimer, WizardSkill, 20
 KeyWait, LButton
 SetTimer, WizardSkill, off 
}
return

WizardSkill:	
{
	Click
 
}
return

#Include 显示通知.ahk  