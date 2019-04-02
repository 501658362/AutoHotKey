;#Include 显示通知.ahk
CoordMode, Mouse, Screen
Array := ["magnet:?xt=urn:btih:d13081b368a5157d384aef0f57bd9fc89ec08dea&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:5d510355ab3bbf2fa4d5768ac439fcc47dc76edc&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:4d0755e50f62207957bd2364db199fc201040ca8&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:7f8fc77ca70f0b39ab9e123551c401a2bd1a1bf0&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:8c2d17edbc3b3255b45e472548251e32e238f88d&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:e94075b1047c53645b821ef36960eecd61d1c35c&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:5e30d650eb1c156d5014edfc7c342954d0845245&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:f5d2778f04f9ec61ba2111aaf6f567f2c92dbef0&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:c840ebe6109c331b2b04b83ce212b11458a2ec92&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:b5fb7edd709e6855ca98c8ed94335f640848cafa&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz"]

var_tracker:="udp://tracker.coppersurfer.tk:6969/announce`n`rudp://tracker.open-internet.nl:6969/announce`n`rudp://tracker.leechers-paradise.org:6969/announce`n`rudp://tracker.internetwarriors.net:1337/announce`n`rudp://tracker.opentrackr.org:1337/announce`n`rudp://9.rarbg.to:2710/announce`n`rudp://9.rarbg.me:2710/announce`n`rudp://exodus.desync.com:6969/announce`n`rudp://explodie.org:6969/announce`n`rudp://tracker1.itzmx.com:8080/announce`n`rhttp://tracker3.itzmx.com:6961/announce`n`rudp://tracker2.itzmx.com:6961/announce`n`rudp://ipv4.tracker.harry.lu:80/announce`n`rudp://tracker.torrent.eu.org:451/announce`n`rudp://tracker.tiny-vps.com:6969/announce`n`rudp://open.stealth.si:80/announce`n`rudp://open.demonii.si:1337/announce`n`rudp://denis.stalker.upeer.me:6969/announce`n`rudp://tracker.cyberia.is:6969/announce`n`rudp://thetracker.org:80/announce"

Loop % array.Length()
{


		;MsgBox % array[A_Index]
}

getBm(){
	global dm
	global v_loop
	
	if(!dm.ver()){
		dm:=ComObjCreate("dm.dmsoft")
		
		showMsg("重新加载dm" dm.ver())
	} 
	return dm
}

$^r::
{
	Reload
}
return

$6::
{ 
	
	Loop % Array.Length()
	{
		
		v := Array[A_Index]
		;MsgBox, %v%
		bbbb(v)
			;MsgBox % array[A_Index]
	}
}
return



v1:=1

; 百度网盘下载
$5::
{
	
	global v1
	WinGet, id, ID, ahk_class DuiHostWnd ahk_exe BaiduNetdisk.exe,, Program Manager
	;WinActivate, ahk_id %id%
	Loop % array.Length()
	{
		WinActivate, ahk_id %id%
		v := array[A_Index]
		ccccc(v)
			;MsgBox % array[A_Index]
	}
	
 
	
 
}
return
bbbb(msg){
		global var_tracker
		WinActivate, ahk_exe uTorrent.exe
		Sleep, 500
		; 点击新建链接
		Click, 	53, 63 
		Sleep, 1000
		; 点击输入框
		Click, 759, 513
		; 输入链接
		Sleep, 100
		SendInput, %msg%
		Sleep, 1700
		
		; 打开下载页面
		Click, 	1026, 552
		Sleep, 500
		; 打开高级
		Click, 	558, 763
		Sleep, 500
		; 点击 tracker
		Send, {end}
		Send, {Enter}
		;Click, 954, 342
		
		Sleep, 300
		;MsgBox, 1
		SendInput, %var_tracker%
		Sleep, 3000
		; 保存 tracker
		Click, 	1024, 814
		
		; 下载
		Click, 1260, 768
}
return
ccccc(msg){
	
		Sleep, 1000
		; 点击新建链接
		Click, 646, 95
		Sleep, 500
		; 点击输入框
		Click, 934, 483
		; 输入链接
		Sleep, 100
		Click, 934, 483
		Send, %msg%
		Sleep, 1700
		; 下载
		Click, 	1169, 637
		Sleep, 3000
		; 后台运行
		Click, 1171, 688 
}
return

$4::
{
	global v1
	WinGet, id, list, ahk_class Chrome_WidgetWin_1,, Program Manager
	
	v := Array[v1]
	;MsgBox, %v%  %v1%
	v1:=v1+1
	
	Loop, %id%
	{	
		;获取pid
		this_id := id%A_Index%
		;MsgBox, %this_id%
		;激活浏览器
		WinActivate, ahk_id %this_id%
		; 点击新建链接
		Click, 827, 436
		Sleep, 500
		; 点击输入框
		Click, 903, 553
		; 输入链接
		
		Send, %v%
		Sleep, 2000
		; 修改网盘目录
		Click, 880, 645
		Sleep, 500
		; 选择目录
		Click, 807, 518
		Sleep, 500
		; 保存选择的目录
		Click, 995, 700 
		Sleep, 500
		; 下载
		Click, 1064, 686
		Sleep, 3000
	}
}
return
#Include 显示通知.ahk
	
 