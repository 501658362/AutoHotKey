#Include 显示通知.ahk
CoordMode, Mouse, Screen
Array := ["magnet:?xt=urn:btih:916786c942bbb4728225a62e28b6545bbda13110&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:44e40e51240ab1a9db5eefc08f68a39fef9c6d37&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:0d8949f447ac06b806e5dd98cd0c8a744a49429c&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:de46d080f9e2f3d6c693ea8897f39189ae7d02e2&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:64f158a327441fd9060b2e3f8296c76607d60d3f&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:dca9e1369699fd715e29a1952517e2ca4572b415&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:59438297b6d26bc80a69c821f14048ab4d19b955&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:ce57d19eefe018b1a102924bbac8374ea8bddb8f&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:6fb762cf21973934fdbaaa6df51688f1db717616&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:9f72bf317ecaea872d7d956a1b473679d0d5550a&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:e0aab1e06bb8100760fd9ccf43924c16df3156be&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:d65c76a9fdc9291e48e1b5f747d1bf8d0a8e03b4&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:13beea1d38b0ad7ec69d817f8706e48f423667cf&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:2b2715489e5f903ff537cc5c4af94be63d479c69&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:f90807071f44a58bd0fd51b351cf33f16bf6ffb2&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:240d472b758f51863536d965803fdca0eae4d3e1&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:bfb2b2851b89a673a2a417736174cd8183c3b2b7&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=http://tr.cili001.com:8070/announce&amp;tr=http://tracker.trackerfix.com:80/announce&amp;tr=udp://open.demonii.com:1337&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://p4p.arenabg.com:1337&amp;tr=wss://tracker.openwebtorrent.com&amp;tr=wss://tracker.btorrent.xyz&amp;tr=wss://tracker.fastcast.nz"]


Loop % array.Length()
{


		MsgBox % array[A_Index]
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
		MsgBox, %v%
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
	
		WinActivate, ahk_exe uTorrent.exe
		Sleep, 500
		; 点击新建链接
		Click, 	53, 63 
		Sleep, 1000
		; 点击输入框
		Click, 759, 513
		; 输入链接
		Sleep, 100
		Send, %msg%
		Sleep, 1700
		
		; 下载
		Click, 	1026, 552
		Sleep, 3000
		; 后台运行
		Click, 1242, 269
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

	WinGet, id, list, ahk_class Chrome_WidgetWin_1,, Program Manager
	
	v := array[A_Index]
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
		Sleep, 2500
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
	
 