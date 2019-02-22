
huanmoSkillOn:=0

huanmoSkillStart(){
	global huanmoSkillOn
	huanmoSkillOn:=1
	SetTimer, Label1, 300 ;动作条技能1键600毫秒连点， 
	;SetTimer, Label2, 100 ;动作条技能2键600毫秒连点 
	SetTimer, Label3, 300 ;动作条技能3键600毫秒连 
	;SetTimer, Label4, 100 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
	SetTimer, MouseLButton, 2500 ;鼠标左键150毫秒连点，150可改动
	SetTimer, MouseRButton, 300 ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
	;Send {space down} ;按住强制移动键x，x可改动
}
return

huanmoSkillStop(){
	global huanmoSkillOn
	huanmoSkillOn:=0
	SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
	SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
	SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
	SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
	SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
	;Send {space up} ;松开强制移动键x，x可改动
		Send {w Up} 
}
 return
    
#if huanmoSkillOn=1 and WinActive("ahk_class D3 Main Window Class")
 
$R::
{	
	
 
	huanmoSkillStop()
	huanmoSkillOn:=1
	Send, R
	
 
}
return


$w::
{	
	 
	v_w:=GetKeyState("w")
	if(v_w){
		showMsg("w 关")
		;SetTimer, MouseLButton, 200
		Send {w Up} 
		 
	}else{
		showMsg("w 开")
		;SetTimer, MouseLButton, off
		Send {w Down}
	 

	}

 
}
return

$E::
{	
	 
	huanmoSkillStart()
 
}
return


#If