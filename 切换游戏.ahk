#Include 显示通知.ahk
#IfWinActive,ahk_class D3 Main Window Class 

v_changeGame:=1

~+1::
{
	setGame(1) 
	
}
return
~+2::
{
	setGame(2) 
	
}
return
~+3::
{
	setGame(3) 
	
}
return

~1::
{
	changeGame(1) 
	
}
return

~2::
{
	changeGame(2) 
}
return

~3::
{
	changeGame(3) 
	
}
return

~4::
{
	showMsg("加载PID文件")
	loadFIle()
}
return


~5::
{
	showMsg("删除PID文件")
	v_game1:=0
    v_game2:=0
    v_game3:=0
	FileDelete, gameId1.txt
	FileDelete, gameId2.txt
	FileDelete, gameId3.txt
}
return


~6::
{
	
	v_changeGame:=!v_changeGame
	if(v_changeGame = 1){
		showMsg("切换游戏 开")
	}else{
		showMsg("切换游戏 关")
	}
	
}
return



v_game1:=0
v_game2:=0
v_game3:=0
changeGame(index){
	global v_game1
	global v_game2
	global v_game3
	global v_changeGame
	if(v_changeGame = 0){
		return
	}
	v_current_game_pid:=0
	if(index = 1){
		v_current_game_pid:=v_game1
	}else if (index = 2){
		v_current_game_pid:=v_game2
	} else if (index = 3){
		v_current_game_pid:=v_game3
	}
	if(v_current_game_pid){
		showMsg("跳转游戏" index)
		WinActivate, ahk_id %v_current_game_pid%
	}else{
		
		WinGet, v_current_game_pid, ID, A
		FileDelete, gameId%index%.txt
		FileAppend, %v_current_game_pid%,  gameId%index%.txt
		loadFIle()
	}
	
}
 
 loadFIle(){
	
	global v_game1
	global v_game2
	global v_game3 
	 
	if FileExist("gameId1.txt"){
		FileReadLine, line, gameId1.txt,1
		v_game1:=line
		
		showMsg("加载1 " v_game1, 100)
		Sleep, 50
	}
	if FileExist("gameId2.txt"){
		FileReadLine, line, gameId2.txt,1
		v_game2:=line
		showMsg("加载2 " v_game2, 200)
		Sleep, 50
	}
	if FileExist("gameId3.txt"){
		FileReadLine, line, gameId3.txt,1
		v_game3:=line
		showMsg("加载3 " v_game3, 300)
		Sleep, 50
	}
}
 
setGame(index){
	global v_game1
	global v_game2
	global v_game3
	showMsg("设置游戏" index)
	WinGet, v_current_game_pid, ID, A
	if(index = 1){
		v_game1:=v_current_game_pid 
	}else if (index = 2){
		v_game2:=v_current_game_pid 
	} else if (index = 3){
		v_game3:=v_current_game_pid 
	}

	
	FileDelete, gameId%index%.txt
	FileAppend, %v_current_game_pid%,  gameId%index%.txt
}