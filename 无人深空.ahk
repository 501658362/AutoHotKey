 

;#maxThreadsPerHotkey, 2
v_trg=:0

$F5::
{
	 
	 
	;MsgBox, %v_trg%
	If (v_trg=0) 
	{ 
		showMsg("关")
		v_trg:=1
	}else{
		showMsg("开")
		v_trg:=0
	}
	 
	
}
return
#if v_trg = 0


var_flag:=0

$F1::
{
	 
	showMsg("自动奔跑")
	Send {w Down}
	Send {shift down}
	 
	
}
return

$F2::
{
	showMsg("自动奔跑关闭")
	 
 	Send {w up}
	Send {shift up}
	 
}
return

$F3::
{
	 
	  showMsg("飞船开炮连点")
	If (var_flag=0) 
	{ 
			var_flag := 1
	SetTimer, MouseLButton, 10 ;鼠标左键150毫秒连点，150可改动
	}
	Else 
	{
			var_flag := 0
	SetTimer, MouseLButton, off ;鼠标左键150毫秒连点，150可改动
	}
	 
}
return

$1::
{
	
	global var_flag
	If (var_flag=0) 
	{ 
		
		  showMsg("开采光束 开")
		start()
	}
	Else 
	{
		;MsgBox, stop 
		 showMsg("开采光束 关")
		stop()
	}
	 
}
return

$2::
{
	
	global var_flag
	If (var_flag=0) 
	{ 
		 showMsg("地形 开")
		Click, down
		var_flag := 1
	}
	Else 
	{ 
		;MsgBox, stop
			 showMsg("地形 关")
		var_flag := 0
		Click, up
	}
	 
}
return

$3::
{
	Send {x}
	;Sleep, 50
	;Send {f}
	;Sleep, 50
	;send {f}
}
return

$4::
{
	 showMsg("加速飞行")
	Send {shift down}
	 
}
return


stop(){
	global var_flag
	var_flag := 0
}
return

start(){
	global var_flag
	var_flag := 1
	while(var_flag = 1){
		Click, down
		if(var_flag = 1){
			sleep, 1000
		}
		if(var_flag = 1){
			sleep, 1000
		}
		if(var_flag = 1){
			sleep, 1000
		}
		if(var_flag = 1){
			sleep, 1000
		}
		if(var_flag = 1){
			sleep, 1000
		}
		Click, up
		sleep, 1200
	}
}
return



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



 
MouseLButton:
{
Click Left ;点击鼠标左键键 
Return
}