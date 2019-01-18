#if v_trg = 1 and WinActive("ahk_class D3 Main Window Class")

$NumpadIns:: ; 分解普通材料 0
{   
	if(v_number_key = 1){
		showMsg("分解普通材料")
		MouseMove, 250, 290 ,2
		Click Left ;  
		Send {enter} 
		Send {enter} 
		
		
		MouseMove, 320, 290 ,2
		Click Left ;  
		Send {enter} 
		Send {enter} 

		
		MouseMove, 380, 290 ,2
		Click Left ;  
		Send {enter} 
		Send {enter} 
		
		moveToCenter()
		closeChatInput()
		
		
	}

} 
Return  
$NumpadEnd:: ; 停止循环 1
{ 
	if(!v_number_key){
		return
	}
 	showMsg("停止循环")
	v_loop:=0	
	
} 
Return  

$NumpadDown:: ; 升级宝石 5次 2
{ 
	if(!v_number_key){
		return
	}
	showMsg("升级宝石 5次")
	v_loop:=1
	Click Left ; 
	Loop, 5
	{
		updateGem(A_Index, 5)
	}
	Send {T}
	
} 
Return  
 


$NumpadPgDn:: ; 传送到我这 3
{  
	if(!v_number_key){
		return
	}
	showMsg("传送到我这")
	moveToMe()
	
} 
Return  



$NumpadLeft:: ; 批量升级双格稀有装备 4
{
	forEachUpdate(2)
}
return

$NumpadClear:: ; 批量升级单格稀有装备 5
{ 

	forEachUpdate(1)
} 
Return 


$NumpadRight:: ;悬赏开关键 6
{ 
	
	if(!v_number_key){
		return
	}
	v_comisson:=!v_comisson 
	if(v_current_hero = 3){
		v_change_weapon:=!v_change_weapon
	}
	
	if(v_comisson = 1 or v_change_weapon = 1){
		showMsg("悬赏开")
	}else{
		showMsg("悬赏关")
	}

	
} 
Return 

;$NumpadHome:: ;循环点击25次右键 7


$NumpadUp:: ;附魔   8 
{
	Click, 161, 391
	Sleep, 50
	Click, 272, 785
	Sleep, 50
	Click, 272, 785
	
	
}
return	

$NumpadPgUp:: ; 重铸装备 9
{ 

	showMsg("重铸装备")
	Click, 720, 843
	Sleep, 50
	Click, 239, 827
	MouseMove, 1538, 600
	;SetTimer, MouseRButton, 20650
} 
Return 

$NumpadSub:: ; 批量扔装备 -
{
	if(!v_number_key){
		return
	}
	showMsg("批量扔装备")
	v_loop:=1 
	knock(2) 
	
}
return


$NumpadAdd:: ;批量敲碎装备   +
{  
	if(!v_number_key){
		return
	}
	showMsg("批量敲碎装备")
	MouseMove, v_decompose_x, v_decompose_y ,0
	Click Left ; 
	v_loop:=1
	knock(1)

	Send {Esc}
	
	moveToCenter()
	
	Click Right ; 
	
} 
Return 


$NumpadMult:: ;重启导航插件 *
{	
	if(!v_number_key){
		return
	}
	showMsg("重启导航插件")

	Send {end up}
	Run, 杀死导航.bat
	Sleep, 1000
	run C:\Users\Chen\Desktop\TurboHUDEn\TurboHUD.exe
	
}
Return 

$NumpadDiv:: ;移动到第一幕 /
{
	if(!v_number_key){
		return
	}
	showMsg("移动到第一幕")
	gotoFirstA()
	
}
Return 

#if