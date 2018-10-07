
#if v_current_hero=3  and WinActive("ahk_class D3 Main Window Class")

~WheelUp::
~WheelDown::
{
	if(v_change_weapon){
		BlockInput On
		

		send, {C}
		Sleep, 50
		
		PixelGetColor, color, 1762, 275
		;MsgBox, %color%
		if(color = 0x1C5D57){
			showMsg("火影")
		}else{
			showMsg("金钟")
		}
		
		
		Click, Right, 1531, 837
		Click, Right, 1580, 838
		Click, Right, 1630, 838
		Click, Right, 1680, 838
		Click, Right, 1730, 838
		Click, Right, 1780, 838
		Click, Right, 1830, 838
		Click, Right, 1830, 784
		Click, Right, 1880, 838
		send, {C}
		BlockInput off
		moveToCenter()
	}

}
return
#If

monkSkillOn:=0
MonkSkillStart()
{
	global v_loop
	global v_current_hero
	global v_current_hero_name
	global monkSkillOn
	monkSkillOn:=1
	send, {e}
 	SetTimer, Label1, 300 ;动作条技能1键600毫秒连点 
	;SetTimer, Label2, 250 ;动作条技能2键600毫秒连点 
	;SetTimer, Label3, 20 ;动作条技能3键600毫秒连点 
	SetTimer, Label4, 600 ;动作条技能4键600毫秒连点 
	;SetTimer, MouseLButton, 200 ;鼠标左键150毫秒连点 
	;SetTimer, MouseRButton, 300 ;鼠标右键600毫秒连 
	
	SetTimer, forceClick, 1000 ;鼠标左键150毫秒连点 
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
	SetTimer, forceClick, off 
	Send {space up} ;松开强制移动键x，x可改动
	
	if(GetKeyState("w")){
		send, {w Up}
		 
	}
}
return

#if monkSkillOn=1 and WinActive("ahk_class D3 Main Window Class")

monk_skill:=2
$w::
{
	;如果键是按下的(或打开了), 函数返回 1, 如果是松开的, 则返回 0
	v_w:=GetKeyState("w")
	if(v_w){
		showMsg("金钟 关")
		;SetTimer, MouseLButton, 200
		Send {space down}
		send, {w Up}
		 
	}else{
		showMsg("金钟 开")
		;SetTimer, MouseLButton, off
		Send {space up}
		send, {w Down}

	}
 
}
return
  
#If