#IfWinActive,ahk_class D3 Main Window Class 

em:=0
NumpadDel:: ; 
{ 
  if(em==0){
    
  Send ^{a}
  Send {del}
  Send 501658362@qq.com
  Send {tab}
  Send chenyanjinawe123
  Send {Enter}
  }
  em:=em+1

  if(em==2){
    
  Send ^{a}
  Send {del}
  Send 1250986855@qq.com
  Send {tab}
  Send Ai572392091
  Send {Enter}
  }
  
  ;账号：m15063409657@163.com   密码：as910443s
  
  


} 
Return 
 
$^w::
{
  Run, 杀死脚本.bat
  showMsg("杀死脚本")
}
return

$^r::
{
  showMsg("启动脚本")
  Run, 我的暗黑宏.exe
}
return
  
;显示通知 
showMsg(str, y = 50){ 
	if(StrLen(str) = 0){
		return
	}
 
	FileDelete, msg.txt
	FileAppend, %str%,  msg.txt
  return
}
