/*
;显示通知 
showMsg(str, y = 50){ 
	if(StrLen(str) = 0){
		return
	}

	
	global v_c_x
	global v_c_y
	
	if(v_c_x = 0 or v_c_y = 0){
		MouseGetPos, MouseX, MouseY
		v_c_x := MouseX
		v_c_y := MouseY
	}
 
	FileDelete, msg.txt
	FileAppend, %str%,  msg.txt
	Run, 消息通知.exe
}
*/

/*
var_current_check:=0
var_msg_t:=0


showMsg(str, y = 50){ 
	SetTimer, RemoveToolTip, 1000
	if(StrLen(str) = 0){
		return
	}

	
	global v_c_x
	global v_c_y
	global var_msg_t
	
	
	if(v_c_x = 0 or v_c_y = 0){
		MouseGetPos, MouseX, MouseY
		v_c_x := MouseX
		v_c_y := MouseY
	}
 

	if(!var_msg_t){
		var_msg_t:=0
	}
	var_msg_t:=var_msg_t+1	
	if(var_msg_t > 3){
		var_msg_t:=1
		
	}
	;MsgBox, %var_msg_t%
	ToolTip, %str%, 900, 30*var_msg_t, var_msg_t
}




 
RemoveToolTip:
global var_msg_t
global var_current_check
ToolTip,  %var_msg_t%, 200, 50, 19
if(var_msg_t != var_current_check){
	if(var_msg_t > 0){
		var_current_check:=var_msg_t
		return
	}
}
if(var_msg_t > 0){
	loop 20{
		ToolTip,,,, A_Index
	}
	var_msg_t:=0
}else{
	ToolTip
}
ToolTip
return
*/


var_current_check:=0
var_msg_t:=0


showMsg(str, y = 50){ 
	SetTimer, RemoveToolTip, 1000
	if(StrLen(str) = 0){
		return
	}
	
	Gui,Destroy
	;y := 50  ;y is the y-coordinate of the prompting window
 
    Gui, +AlwaysOnTop +Disabled -Caption -SysMenu +Owner +LastFound
    Gui, font, s26 cFF0000 w600, Verdana
    Gui, Color, FF0001
    WinSet, TransColor, FF0001
    Gui,Add,Text,BackgroundTrans,%str% 
    Gui, Show, NoActivate Y%y% NA, Title of Window
}




 
RemoveToolTip:
global var_msg_t
global var_current_check
;ToolTip,  %var_msg_t%, 200, 50, 19
if(var_msg_t != var_current_check){
	if(var_msg_t > 0){
		var_current_check:=var_msg_t
		return
	}
}
if(var_msg_t > 0){
	Gui,Destroy
	var_msg_t:=0
}else{
	Gui,Destroy
}
 
return
