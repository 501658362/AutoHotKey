
crusaderSkillOn:=0

CrusaderSkillStart(){
	global crusaderSkillOn
	crusaderSkillOn:=1
	SetTimer, Label1, 300 ;动作条技能1键600毫秒连点， 
	SetTimer, Label2, 630 ;动作条技能2键600毫秒连点 
	SetTimer, Label3, 50 ;动作条技能3键600毫秒连 
	SetTimer, Label4, 100 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
	SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
	;SetTimer, MouseRButton, 500 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
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
 

#if crusaderSkillOn=1 and v_comisson = 1

$RButton:: ;
{ 
	stop()
	Click Right
	Send {space down} ;按住强制移动键x，x可改动
	Sleep, 2800  ; 2.8 秒
	start()
}
Return

~LButton:: ;
{ 
	start()
}
Return

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

#if


#if v_current_hero=0  and WinActive("ahk_class D3 Main Window Class")
~WheelUp::
{
	changeC()
}
return
~WheelDown::
{
	changeC()
}
return

changeC(){
	global v_comisson
	v_comisson:=!v_comisson
	if(v_comisson = 1){
		showMsg("跑马开")
	}else{
		showMsg("跑马关")
	}

}
return
#if

