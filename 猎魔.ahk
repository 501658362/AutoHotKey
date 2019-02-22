
liemoSkill:=0
liemo:=1 ;1=三刀

liemoSkillStart(){
	global liemoSkill
	global liemo
	liemoSkill:=1
	
 
		;Send, e
		SetTimer, Label1, 500 ;动作条技能1键600毫秒连点， 
		;SetTimer, Label2, 1000 ;动作条技能2键600毫秒连点 
		;SetTimer, Label3, 4000 ;动作条技能3键600毫秒连 
		;SetTimer, Label4, 100 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
		 SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
		SetTimer, MouseRButton, 2000 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
 

}

liemoSkillStop(){
	global liemo
	
	 
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
		 
}
 
#if v_current_hero=9  and WinActive("ahk_class D3 Main Window Class")
 
#if

  