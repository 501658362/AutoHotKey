v_trg:=0

~g::
{

		showMsg("关")
		v_trg:=1

}
return

~t:: 
~tab::
{
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
 ;MsgBox, 55
  
 
 ;MouseMove, x, y+20
; 	MouseGetPos, x, y 
;	MouseClickDrag, left, x, y ,  x, y+100 , 0
; SetTimer, WizardSkill, 150 ;鼠标左键150毫秒连点，150可改动

{
	Click
	;MouseGetPos, x, y 
	;MouseClickDrag, left, x, y ,  x, y+100 , 0
	; MouseGetPos, x, y 
	 ;MouseMove, x, y+20
}
return


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