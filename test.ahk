
#Include 显示通知.ahk
$k::
{
	StartTime := A_TickCount
 
	while(true){
		MouseMove, 269, 548 ,2
		Sleep, 100 ; 
		PixelGetColor, color,  190, 543
		if(color = 0x2B1600 or color = 0x532D00){
			Click Left ; 
			StartTime := A_TickCount
		}else{
			showMsg("zhaobudao")
		}
		ElapsedTime := A_TickCount - StartTime
		if(ElapsedTime > 3000){
			showMsg("超时退出")
			MsgBox, %color%
			break
		}
		
	}
}

$l::
{
	MouseMove, 269, 548 ,2
		Sleep, 100 ; 
		PixelGetColor, color,  190, 543
		MsgBox, %color%
}

return
 

checkGem(){
	MouseMove, 169, 148 ,2
	Sleep, 100 ; 
	MouseMove, 269, 548 ,2
	
	PixelGetColor, color,  190, 543
	if(color = 0x2B1600 or color = 0x532D00){
		Click Left ; 
	}else{
		showMsg("zhaobudao")
	}
	
}

;Screen:	183, 543 (less often used)
;Window:	183, 543 (default)
;Client:	183, 543 (recommended)
;Color:	003B63 (Red=00 Green=3B Blue=63)