
while(true){
	if FileExist("msg.txt"){
			FileReadLine, line, msg.txt,1
	FileDelete, msg.txt 
	showMsg(line)
	destroyGui()
	}
	Sleep, 50


}
 

;显示通知 
showMsg(str, y = 50){ 
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
 
    ;Sleep, ms
    ;Gui, destroy
 
}
destroyGui(ms = 500){
	Sleep, ms
	Gui, destroy
}
