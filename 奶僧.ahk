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
	 
	
	SetTimer, Label1, off ; 
	SetTimer, Label2, off ; 
	SetTimer, Label3, off ; 
	SetTimer, Label4, off ; 
	SetTimer, MouseLButton, off ; 
	SetTimer, MouseRButton, off ; 
	 
	Send {space up} ; 
	
 
}
return

;boss
naiMonkFightBoss(){
	 
 	SetTimer, Label1, 300 ;  
	;SetTimer, Label2, 250 ;  
	;SetTimer, Label3, 400 ;  
	SetTimer, Label4, 200 ;  
	SetTimer, MouseLButton, 200 ;  
	SetTimer, MouseRButton, 200 ;  
 
}
return

;包精英
naiMonkFight(){
	
	send, {e}
 	SetTimer, Label1, 900 ;  
	SetTimer, Label2, 800 ;  
	SetTimer, Label3, 5000 ;  
	SetTimer, Label4, 700 ;  
	SetTimer, MouseLButton, 150 ;  
	SetTimer, MouseRButton, 200 ;  
 
}
return

;包赶路
naiMonkRun(){
	Click Right
 	;SetTimer, Label1, 300 ;  
	;SetTimer, Label2, 250 ;  
	;SetTimer, Label3, 3000 ;  
	SetTimer, Label4, 200 ;  
	;SetTimer, MouseLButton, 200 ;  
	SetTimer, MouseRButton, 200 ;  
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