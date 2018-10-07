
crusaderSkillOn:=0

CrusaderSkillStart(){
	global crusaderSkillOn
	crusaderSkillOn:=1
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
 

#if crusaderSkillOn=1

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

#if


