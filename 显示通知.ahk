
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
 
}
