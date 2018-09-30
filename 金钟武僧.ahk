

monkSkillOn:=0
MonkSkillStart()
{
	global v_loop
	global v_current_hero
	global v_current_hero_name
	global monkSkillOn
	monkSkillOn:=1
	send, {e}
 	SetTimer, Label1, 600 ;动作条技能1键600毫秒连点 
	;SetTimer, Label2, 250 ;动作条技能2键600毫秒连点 
	;SetTimer, Label3, 20 ;动作条技能3键600毫秒连点 
	SetTimer, Label4, 600 ;动作条技能4键600毫秒连点 
	SetTimer, MouseLButton, 200 ;鼠标左键150毫秒连点 
	;SetTimer, MouseRButton, 300 ;鼠标右键600毫秒连 
	Send {space down} ;按住强制移动键x，x可改动
}
return     

MonkSkillStop(){
	global monkSkillOn
	monkSkillOn:=0
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
	Send {space up} ;松开强制移动键x，x可改动
}



#if monkSkillOn=1

 
return
monk_skill:=2
~LButton::
{
	;如果键是按下的(或打开了), 函数返回 1, 如果是松开的, 则返回 0
	v_w:=GetKeyState("w")
	if(v_w){
		showMsg("金钟 关")
		send, {w Up}
	}else{
		showMsg("金钟 开")
		send, {w Down}
	}
	
	;showMsg("金钟 关" v_w)
	;global monk_skill
	;if(monk_skill = 1){
	;	;showMsg("金钟 关")
	;	SetTimer, Label2, off 
	;	monk_skill:=2
	;}else{
	;	;showMsg("金钟 开")
	;	send, {w}
	;	SetTimer, Label2, 30
	;	monk_skill:=1
	;}
}
return

$RButton::
$space::
{
	v_w:=GetKeyState("w")
	if(v_w){
		send, {w Up}
		showMsg("金钟 关")
		Sleep, 100
		Click right 
	}else{
		showMsg("飞")
		Click right 
	}
	;global monk_skill
	;if(monk_skill = 1){
	;	showMsg("关 金钟")
	;	SetTimer, Label2, off 
	;	Sleep, 400
	;	Click right 
	;}else{
	;	showMsg("飞")
	;	;Click right 
	;	
	;}
	;
	;monk_skill:=2

 
}
return
#If