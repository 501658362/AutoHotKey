#Include public.ahk


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
		
		destroyGui()
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
	destroyGui()
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
	destroyGui()
} 
Return  
 


$NumpadPgDn:: ; 传送到我这 3
{  
	if(!v_number_key){
		return
	}
	showMsg("传送到我这")
	moveToMe()
	destroyGui()
} 
Return  

$NumpadLeft:: ; 连点鼠标左键 捡东西 4
$F1:: ; 连点鼠标左键 捡东西
{ 
	if(!v_number_key){
		return
	}
	if(v_aotu_pick=0){
		showMsg("开启鼠标左键连点")
		SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
		v_aotu_pick:=1
	}else{
		showMsg("关闭鼠标左键连点")
		v_aotu_pick:=0
		SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
	}
	destroyGui()
} 
Return  
 


$NumpadClear:: ; 批量升级双格稀有装备 5
{ 
;if(!v_number_key){
;	return
;}
;showMsg("批量升级双格稀有装备")
;
;v_cp:=1540
;Loop, 8
;{
;
;	MouseMove, v_cp, 612 ,0
;	v_cp:=v_cp+50
;	updateWeapon(v_cp)
;	Click Right ;
;}
;
;v_cp:=1540
;Loop, 8
;{
;	MouseMove, v_cp, 712 ,0
;	v_cp:=v_cp+50
;	updateWeapon(v_cp)
;	Click Right ;
;}
;
;v_cp:=1590
;Loop, 7
;{ 
;	MouseMove, v_cp, 812 ,0
;	v_cp:=v_cp+50
;	updateWeapon(v_cp) 
;	Click Right ;
;}
;destroyGui()

	if(!v_number_key){
		return
	}
	showMsg("批量升级单格稀有装备")
	 
 
	global v_loop
	global v_package_x_p
	global v_package_y_p
	global v_package_x_to_x
	global v_package_y_to_y

	v_cp:=v_package_x_p
	v_c_y:=v_package_y_p

	Loop, 6{
		Loop, 8
		{
			
			if(v_loop=1){
				MouseMove, v_cp, v_c_y, 0
				v_cp:=v_cp+v_package_x_to_x
				updateWeapon(v_cp)
				Click Right ;
			}

		}
		v_cp:=v_package_x_p
		v_c_y:=v_c_y+v_package_y_to_y
	}
 
 
	 
	destroyGui()
} 
Return 


$NumpadRight:: ;悬赏开关键 6
{ 
	
	if(!v_number_key){
		return
	}
	v_comisson:=!v_comisson 
	if(v_comisson = 1){
		showMsg("悬赏开")
	}else{
		showMsg("悬赏关")
	}

	destroyGui()
} 
Return 

$NumpadHome:: ;循环点击25次右键 7
$F2:: ; 循环点击25次右键
{ 
	
	if(!v_number_key){
		return
	}
	showMsg("循环点击25次右键")
	Loop, 25
	{
		Click Right ;点击鼠标右键 
		Sleep, 10
	}
	destroyGui()
} 
Return 

$NumpadUp:: ;批量敲碎装备   8 +
$NumpadAdd:: ;批量敲碎装备   8 +
{  
	if(!v_number_key){
		return
	}
	showMsg("批量敲碎装备")
	MouseMove, v_decompose_x, v_decompose_y ,0
	Click Left ; 
	v_loop:=1
	knock(1)

	closeChatInput()
	
	moveToCenter()
	
	Click Right ; 
	destroyGui()
} 
Return 


$NumpadPgUp:: ; 批量扔装备  - 9
$NumpadSub:: ; 批量扔装备 - 9
{ 
	
	if(!v_number_key){
		return
	}
	showMsg("批量扔装备")
	v_loop:=1 
	knock(2) 
	destroyGui()
} 
Return 

$NumpadMult:: ;重启导航插件 *
{	
	if(!v_number_key){
		return
	}
	showMsg("重启导航插件")
	Run, taskkill /f /im TurboHUD.exe 
	Sleep, 1000
	run C:\Users\Chen\Desktop\TurboHUDEn\TurboHUD.exe
	destroyGui()
}
Return 

$NumpadDiv:: ;移动到第一幕 /
{
	if(!v_number_key){
		return
	}
	showMsg("移动到第一幕")
	gotoFirstA()
	destroyGui()
}
Return 