
yemanrenSkill:=0
yemanren:=1 ;1=不朽锤  2=不朽5+3雷寇冲锋

yemanrenSkillStart(){
	global yemanrenSkill
	global yemanren
	yemanrenSkill:=1
	
	if(yemanren = 1){
		;Send, e
		SetTimer, Label1, 1000 ;动作条技能1键600毫秒连点， 
		SetTimer, Label2, 1000 ;动作条技能2键600毫秒连点 
		;SetTimer, Label3, 4000 ;动作条技能3键600毫秒连 
		;SetTimer, Label4, 100 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
		SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
		SetTimer, MouseRButton, 60000 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
		Send, r
		;Send {space down} ;按住强制移动键x，x可改动
		Click Right
	}else{
		
		Send, e
		SetTimer, Label1, 2500 ;动作条技能1键600毫秒连点， 
		SetTimer, Label2, 1000 ;动作条技能2键600毫秒连点 
		SetTimer, Label3, 3500 ;动作条技能3键600毫秒连 
		;SetTimer, Label4, 1000 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
		SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
		SetTimer, MouseRButton, 30000 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
		Send, r
		 
		Click Right

	}

}

yemanrenSkillStop(){
	global yemanren
	
	if(yemanren = 1){
		
	}else{
		
	}
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
		 
}
 
#if v_current_hero=8  and WinActive("ahk_class D3 Main Window Class")
~WheelUp::
{
	changeYemanren()
}
return
~WheelDown::
{
	changeYemanren()
}
return

changeYemanren(){
	global yemanren
	 
	if(yemanren = 1){
		yemanren:=2
		showMsg("不朽5+3雷寇冲锋")
	}else{
		yemanren:=1
		showMsg("不朽锤")
	}

}
return
#if

  