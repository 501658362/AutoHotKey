#SingleInstance Force
 
#Include 显示通知.ahk
; 事件1锁定
event1:=false
; 事件2锁定
event2:=false
; 事件3锁定
event3:=false
; 重生事件在第几个格子
rebornEventNum:=0
; 是否在重生中
isReborning:=false
; 事件1还没刷新
waitingEvent1:=false
; 事件2还没刷新
waitingEvent2:=false
; 事件3还没刷新
waitingEvent3:=false
getBm(){
	global dm
	global v_loop
	
	if(!dm.ver()){
		dm:=ComObjCreate("dm.dmsoft")
		
		showMsg("重新加载dm" dm.ver())
	} 
	return dm
}

log(str){
	showMsg(str)
	if(StrLen(str) = 0){
		FileAppend, `n, 1小小勇者.log
		return
	}
	
	FormatTime, c_time,, yyyy/MM/dd HH:mm:ss
 
	FileAppend, %c_time%:%str%`n, 1小小勇者.log
	return
}


$y::
{
	WinActivate, ahk_class Qt5QWindowIcon
	dm:=getBm() 
	 
	p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\时空旅者.bmp"
	;p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\刀刀秒杀.bmp"
	pos1:= dm.FindPicE(	716, 172,1160, 367, p_name,"000000", 0.6 ,0)

	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]
	
	if(x1 = -1){
		showMsg("找不到")
		Sleep, 50
		; 选择现在的属性 
	
		Sleep, 50
		; 开启附魔
		;Click,  272, 785
		Sleep, 2500
	}else{
		showMsg("找到了")
		;判断是第几个格子 第一格<860 第二格< 1000 
		if(x1 < 860){
		showMsg("第一格")
		}else if (x1 < 1000){
		showMsg("第二格")
		}else{
		showMsg("第三格")
		}
		 
		
		SoundBeep, 1523, 800
	}
	
	closeConfirm()
   
	;1520,332 1162,372
}
return

$^r::
{
  Reload 
}
return

$r::
{
	global event1
	global event2
	global event3
	global rebornEventNum
	global isReborning
	event1:=false
	event2:=false
	event3:=false
	isReborning:=false
	rebornEventNum:=0
	closeOtherEvent()
	openEventTab()
	findRebornEvent()
}
return

$e::
{
	;closeRebornConfirm()
	;findAndLockEvent()
	;usedUpUselessEvents()
	test()
	SetTimer, findAndLockEvent, 60000 
	 
}
return
findAndLockEvent: 
{
	test()
	Return
}

test(){
	log("=============================start=============================")
	findAndLockEvent()
	usedUpUselessEvents()
	log("=============================end=============================")
	log("")
	log("")
	log("")
	return
}

;寻找还没刷新的事件
findNotReadyEvent(){
	log("-----------------------------开始寻找还没刷新的事件-findNotReadyEvent：start---------------------------------------")
	global waitingEvent1
	global waitingEvent2
	global waitingEvent3
	WinActivate, ahk_class Qt5QWindowIcon
	openEventTab()
	
	dm:=getBm() 
	 
	p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\没刷新的.bmp"
	 
	eventName := StrSplit(p_name , "|")
	pos1:= dm.FindPicEx(	716, 172,1160, 367, p_name,"000000", 0.7 ,0)

	if(StrLen(pos1) = 0){
		log("findNotReadyEvent:事件刷新好了")
		waitingEvent1:=false
		waitingEvent1:=false
		waitingEvent1:=false
		log("-----------------------------开始寻找还没刷新的事件-findNotReadyEvent：end---------------------------------------")
		return
	}
	Array := StrSplit(pos1 , "|")

	For index, value in Array{
		 
		pArray := StrSplit(value , ",")
		 
		x1:=pArray[2]
		y1:=pArray[3]
 
		;判断是第几个格子 第一格<860 第二格< 1000 
		
		if(x1 < 860){
			log("findNotReadyEvent:第一格还没有刷新")
			waitingEvent1:=true
			 
		}else if (x1 < 1000){
			log("findNotReadyEvent:第二格还没有刷新")
			waitingEvent2:=true
			 
		}else{
			log("findNotReadyEvent:第三格还没有刷新")
			waitingEvent3:=true
		}
	}
	log("-----------------------------开始寻找还没刷新的事件-findNotReadyEvent：end---------------------------------------")
	return 
}

;寻找需要锁定的事件
findAndLockEvent(){
	log("-----------------------------开始寻找锁定的事件-findAndLockEvent：start---------------------------------------")
	global event1
	global event2
	global event3
	WinActivate, ahk_class Qt5QWindowIcon
	openEventTab()
	
	dm:=getBm() 
	 
	p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\重铸大师.bmp|C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\刀刀秒杀.bmp"
	 
	eventName := StrSplit(p_name , "|")
	pos1:= dm.FindPicEx(	716, 172,1160, 367, p_name,"000000", 0.7 ,0)

	if(StrLen(pos1) = 0){
		log("开始寻找锁定的事件-findAndLockEvent: 找不到需要锁定的事件")
		log("-----------------------------开始寻找锁定的事件-findAndLockEvent：end---------------------------------------")
		return
	}
	Array := StrSplit(pos1 , "|")

	For index, value in Array{
		 
		pArray := StrSplit(value , ",")
		eName:=eventName[pArray[1]+1]
		x1:=pArray[2]
		y1:=pArray[3]
 
		;判断是第几个格子 第一格<860 第二格< 1000 
		
		if(x1 < 860){
			log("开始寻找锁定的事件-findAndLockEvent: 找到了" eName " 锁定第一格")
			event1:=true
			 
		}else if (x1 < 1000){
			log("开始寻找锁定的事件-findAndLockEvent: 找到了" eName " 锁定第二格")
			event2:=true
			 
		}else{
			log("开始寻找锁定的事件-findAndLockEvent: 找到了" eName " 锁定第三格")
			event3:=true
		}
	}
	log("-----------------------------开始寻找锁定的事件-findAndLockEvent：end---------------------------------------")
	return  
}

usedUpUselessEvents(){
	log("-----------------------------使用掉无用的事件-usedUpUselessEvents：start---------------------------------------")
	WinActivate, ahk_class Qt5QWindowIcon
	openEventTab()
	global event1
	global event2
	global event3
	global waitingEvent1
	global waitingEvent2
	global waitingEvent3
	findNotReadyEvent()
			;794, 278 
			;939, 274
			;1091, 274
	if(!event1 and !waitingEvent1){
		log("使用掉无用的事件-usedUpUselessEvents：第一格没有被锁")
		click 794, 278 
		closeOtherEvent()
	}else{
		log("使用掉无用的事件-usedUpUselessEvents：第一格被锁或者还没刷新")
	}
	if(!event2 and !waitingEvent2){
		log("使用掉无用的事件-usedUpUselessEvents：第二格没有被锁")
		click 939, 274
		closeOtherEvent()
	}else{
		log("使用掉无用的事件-usedUpUselessEvents：第二格被锁或者还没刷新")
	}
	if(!event3 and !waitingEvent3){
		log("使用掉无用的事件-usedUpUselessEvents：第三格没有被锁")
		click 1091, 274
		closeOtherEvent()
	}else{
		log("使用掉无用的事件-usedUpUselessEvents：第三格被锁或者还没刷新")
	}
	log("-----------------------------使用掉无用的事件-usedUpUselessEvents：end---------------------------------------")
	return
}

findRebornEvent(){
	log("寻找重生事件-findRebornEvent")
	global event1
	global event2
	global event3
	global rebornEventNum
	if(rebornEventNum == 0){
		log("寻找重生事件-findRebornEvent：当前锁定的没有重生事件")
		rebornEventNum:=findRebornEventNum()
		 
		if(rebornEventNum > 0){
			;判断当前是否可以重生了 关卡通关完了吗？
			;判断当前的关卡
		}else{
			log("寻找重生事件-findRebornEvent：将当前的事件点掉")
			usedUpUselessEvents()
		}
	}else{
		log("寻找重生事件-findRebornEvent：当前有锁定的重生事件")
		;判断当前是否可以重生了 关卡通关完了吗？
	}
	return
}


findRebornEventNum(){
	global event1
	global event2
	global event3
	WinActivate, ahk_class Qt5QWindowIcon
	dm:=getBm() 
	 
	p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\时空旅者.bmp"
	 
	pos1:= dm.FindPicE(	716, 172,1160, 367, p_name,"000000", 0.7 ,0)
	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]

	if(x1 = -1){
		log("寻找重生事件-findRebornEventNum：当前刷新的事件中没有重生事件")
	}else{
		
		;判断是第几个格子 第一格<860 第二格< 1000 
		
		if(x1 < 860){
			log("寻找重生事件-findRebornEventNum：找到了重生事件 锁定第一格")
			event1:=true
			return 1
		}else if (x1 < 1000){
			log("寻找重生事件-findRebornEventNum：找到了重生事件 锁定第二格")
			event2:=true
			return 2
		}else{
			log("寻找重生事件-findRebornEventNum：找到了重生事件 锁定第三格")
			event3:=true
			return 3
		}
		  
	}
	return 0
}

closeOtherEvent(){
	WinActivate, ahk_class Qt5QWindowIcon
	log("关闭可能卡住操作的事件-closeOtherEvent：双击边界关闭打开中的事件")
	click, 676, 842
	sleep,1000
	click, 676, 842
	
	closeConfirm()
	closeRebornConfirm()
	return
} 
	
closeRebornConfirm(){
	WinActivate, ahk_class Qt5QWindowIcon
	log("关闭可能卡住操作的事件-寻找重生取消按钮")
	dm:=getBm() 
	 
	p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\重生确认对话框.bmp"
	 
	pos1:= dm.FindPicE(	733, 268,927, 359 , p_name,"000000", 0.9 ,0)
	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]

	if(x1 = -1){
		log("关闭可能卡住操作的事件-closeRebornConfirm: 当前没有重生取消按钮")
	}else{
		log("关闭可能卡住操作的事件-closeRebornConfirm: 发现重生取消按钮")
		click, 1082, 299
		;msgbox,  %x1%, %y1%
	}
	return 0
}

closeConfirm(){
	log("关闭可能卡住操作的事件-closeConfirm：寻找取消按钮")
	dm:=getBm() 
	 
	p_name:="C:\Users\CHEN\Desktop\AutoHotKey\dm\littlehero\取消按钮.bmp"
	 
	pos1:= dm.FindPicE(	670, 440,1185, 762 , p_name,"000000", 0.9 ,0)
	Array := StrSplit(pos1 , "|")
	x1:=Array[2]
	y1:=Array[3]

	if(x1 = -1){
		log("关闭可能卡住操作的事件-closeConfirm：当前没有取消按钮")
	}else{
		log("关闭可能卡住操作的事件-closeConfirm：发现取消按钮")
		click, %x1%, %y1%
		;msgbox,  %x1%, %y1%
	}
	return 0
	
}

openEventTab(){
	log("展开事件-openEventTab: 判断事件是否是展开的")
	WinActivate, ahk_class Qt5QWindowIcon
	closeOtherEvent()
	PixelGetColor, color1, 1008, 149 
	PixelGetColor, color2, 1022, 150 
	sleep,1000
	if(color1 == "0xBADDEF" and color2 =="0xB2D7ED" ){
		;这是展开的按钮
		log("展开事件-openEventTab: 当前是收起来的，展开事件")
		click, 1015, 141
	}else{
		log("展开事件-openEventTab: 当前是展开的")
		;这是收起来的按钮
		;click, 1015, 141
	}
	return
}
