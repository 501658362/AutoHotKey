naiMonkSkillOn:=0
naiMonkSkillType:=1 ;1=赶路 2=站桩包精英 3=boss
#if v_current_hero=4  and WinActive("ahk_class D3 Main Window Class")

naiMonkSkillStart()
{
	;赶路的
	
	global v_loop
	global v_current_hero
	global v_current_hero_name
	global naiMonkSkillOn
	global naiMonkSkillType
	
	naiMonkSkillOn:=1
	 ;1=赶路 2=站桩包精英 3=boss
	if(naiMonkSkillType = 1 ){
		showMsg("奶僧 赶路")
		naiMonkRun()
	}else if (naiMonkSkillType = 2){
		showMsg("奶僧 站桩包精英")
		naiMonkFight()
	}else if (naiMonkSkillType = 3){
		showMsg("奶僧 boss")
		naiMonkFightBoss()
	}else{
		naiMonkSkillType:=1
		showMsg("奶僧 赶路")
		naiMonkRun()
	}
	
}
return     

naiMonkSkillStop(){
	global naiMonkSkillOn
	global naiMonkSkillType
	naiMonkSkillOn:=0
	;1=赶路 2=站桩包精英 3=boss
	 
	
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
	 
	Send {space up} ;松开强制移动键x，x可改动
	
 
}
return

naiMonkFightBoss(){
	 
 	SetTimer, Label1, 300 ;动作条技能1键600毫秒连点 
	;SetTimer, Label2, 250 ;动作条技能2键600毫秒连点 
	SetTimer, Label3, 400 ;动作条技能3键600毫秒连点 
	SetTimer, Label4, 200 ;动作条技能4键600毫秒连点 
	;SetTimer, MouseLButton, 200 ;鼠标左键150毫秒连点 
	SetTimer, MouseRButton, 3000 ;鼠标右键600毫秒连 
 
}
return

naiMonkFight(){
	 
 	SetTimer, Label1, 300 ;动作条技能1键600毫秒连点 
	SetTimer, Label2, 250 ;动作条技能2键600毫秒连点 
	SetTimer, Label3, 400 ;动作条技能3键600毫秒连点 
	SetTimer, Label4, 200 ;动作条技能4键600毫秒连点 
	SetTimer, MouseLButton, 300 ;鼠标左键150毫秒连点 
	SetTimer, MouseRButton, 3000 ;鼠标右键600毫秒连 
 
}
return

naiMonkRun(){
	Click Right
 	;SetTimer, Label1, 300 ;动作条技能1键600毫秒连点 
	;SetTimer, Label2, 250 ;动作条技能2键600毫秒连点 
	;SetTimer, Label3, 3000 ;动作条技能3键600毫秒连点 
	SetTimer, Label4, 200 ;动作条技能4键600毫秒连点 
	;SetTimer, MouseLButton, 200 ;鼠标左键150毫秒连点 
	SetTimer, MouseRButton, 3000 ;鼠标右键600毫秒连 
	Send {space down} ;按住强制移动键x，x可改动
}
return

#if

#if naiMonkSkillOn=1  and WinActive("ahk_class D3 Main Window Class")
~WheelUp::
{
	naiMonkSkillStop()
	naiMonkSkillType:=naiMonkSkillType+1
	if(naiMonkSkillType>3){
		naiMonkSkillType:=1
	}
	naiMonkSkillStart()
	;showMsg("naiMonkSkillType " naiMonkSkillType)
}
return
~WheelDown::
{
	naiMonkSkillStop()
 	naiMonkSkillType:=naiMonkSkillType-1
	if(naiMonkSkillType<1){
		naiMonkSkillType:=3
	}
	naiMonkSkillStart()
	;showMsg("naiMonkSkillType " naiMonkSkillType)
}
return
#if