sss:=""
$F2::
{
clipboard =  ; 让剪贴板初始为空, 这样可以使用 ClipWait 检测文本什么时候被复制到剪贴板中.
Send ^c
ClipWait  ; 等待剪贴板中出现文本.
;MsgBox Control-C copied the following contents to the clipboard:`n`n%clipboard%

sss:=clipboard
}
return 

$F3::
{  
clipboard=%sss%
 
}
return 