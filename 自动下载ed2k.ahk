;#Include 显示通知.ahk
CoordMode, Mouse, Screen
Array := ["magnet:?xt=urn:btih:cf9a512c2a427bc4fbdde960ced422eca5406ebf&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:b509b797681f27fcecd5797071982f7e90d7cf63&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:438c361cf139e8397d4477cb8a69563866b71ff3&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:e5a39ff9b217336c48a32433e2d59f390526a286&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:046b2cff1b71c620f7d38e66a1f13e7f29d76c6d&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:af4380a793c871e987de569be8b62c69aa07f01a&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:9b38c0b7fd0555ad3db63d0b9fd32afe8bfe4a9a&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:8e08828b6b91bf20803d557439a90b5a5017041f&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:6242f34f9e47e836e58517159cda43a0399fcf1f&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:3e115421de2b566cac399c219552c318fd58041d&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:25ee30436be31aa7d2bcf82e6040ac52bc4f4b30&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:f840879611abacd381f572dc96b6bd1059fa2c3a&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz","magnet:?xt=urn:btih:491a595ae493fe4107be5a03dd98468a183033fd&tr=udp://9.rarbg.to:2710/announce&tr=udp://9.rarbg.me:2710/announce&tr=http://tr.cili001.com:8070/announce&tr=http://tracker.trackerfix.com:80/announce&tr=udp://open.demonii.com:1337&tr=udp://tracker.opentrackr.org:1337/announce&tr=udp://p4p.arenabg.com:1337&tr=wss://tracker.openwebtorrent.com&tr=wss://tracker.btorrent.xyz&tr=wss://tracker.fastcast.nz"]

var_tracker:="udp://tracker.coppersurfer.tk:6969/announce`n`rudp://tracker.opentrackr.org:1337/announce`n`rudp://tracker.internetwarriors.net:1337/announce`n`rhttp://tracker.internetwarriors.net:1337/announce`n`rudp://9.rarbg.to:2710/announce`n`rudp://exodus.desync.com:6969/announce`n`rudp://explodie.org:6969/announce`n`rhttp://explodie.org:6969/announce`n`rudp://tracker1.itzmx.com:8080/announce`n`rudp://ipv4.tracker.harry.lu:80/announce`n`rudp://bt.xxx-tracker.com:2710/announce`n`rhttp://tracker1.itzmx.com:8080/announce`n`rudp://tracker.torrent.eu.org:451/announce`n`rudp://tracker.tiny-vps.com:6969/announce`n`rudp://open.stealth.si:80/announce`n`rudp://open.demonii.si:1337/announce`n`rudp://denis.stalker.upeer.me:6969/announce`n`rudp://tracker.vanitycore.co:6969/announce`n`rudp://tracker.port443.xyz:6969/announce`n`rudp://retracker.lanta-net.ru:2710/announce`n`rhttp://tracker.port443.xyz:6969/announce`n`rudp://tracker.iamhansen.xyz:2000/announce`n`rhttp://private.minimafia.nl:443/announce`n`rhttp://prestige.minimafia.nl:443/announce`n`rhttp://open.acgnxtracker.com:80/announce`n`rudp://zephir.monocul.us:6969/announce`n`rudp://tracker.cyberia.is:6969/announce`n`rhttp://tracker.city9x.com:2710/announce`n`rhttp://torrent.nwps.ws:80/announce`n`rhttps://tracker.fastdownload.xyz:443/announce`n`rhttps://opentracker.xyz:443/announce`n`rhttp://tracker3.itzmx.com:6961/announce`n`rhttp://opentracker.xyz:80/announce`n`rhttp://open.trackerlist.xyz:80/announce`n`rudp://tracker1.wasabii.com.tw:6969/announce`n`rudp://tracker.dler.org:6969/announce`n`rudp://pubt.in:2710/announce`n`rudp://bittracker.ru:6969/announce`n`rhttp://tracker2.itzmx.com:6961/announce`n`rhttp://tracker1.wasabii.com.tw:6969/announce`n`rhttp://tracker.torrentyorg.pl:80/announce`n`rhttp://t.nyaatracker.com:80/announce`n`rhttp://retracker.mgts.by:80/announce`n`rhttp://open.acgtracker.com:1096/announce`n`rwss://tracker.openwebtorrent.com:443/announce`n`rwss://tracker.fastcast.nz:443/announce`n`rwss://tracker.btorrent.xyz:443/announce`n`rudp://tracker4.itzmx.com:2710/announce`n`rudp://tracker.kamigami.org:2710/announce`n`rudp://tracker.justseed.it:1337/announce`n`rudp://tracker.filepit.to:6969/announce`n`rudp://torrentclub.tech:6969/announce`n`rudp://packages.crunchbangplusplus.org:6969/announce`n`rhttps://tracker.gbitt.info:443/announce`n`rhttps://1337.abcvg.info:443/announce`n`rhttp://tracker4.itzmx.com:2710/announce`n`rhttp://tracker.tfile.me:80/announce.php`n`rhttp://tracker.tfile.me:80/announce`n`rhttp://tracker.tfile.co:80/announce`n`rhttp://tracker.gbitt.info:80/announce`n`rhttp://torrentclub.tech:6969/announce`n`rhttp://share.camoe.cn:8080/announce`n`rhttp://peersteers.org:80/announce`n`r"

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
	
 