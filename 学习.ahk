
; 示例 #3: 检测热键的单次, 两次和三次按下. 这样
; 允许热键根据您按下次数的多少
; 执行不同的操作:
$F5::
if winc_presses > 0 ; SetTimer 已经启动, 所以我们记录键击.
{
    winc_presses += 1
    return
}
; 否则, 这是新开始系列中的首次按下. 把次数设为 1 并启动
; 计时器:
winc_presses = 1
SetTimer, KeyWinC, -400 ; 在 400 毫秒内等待更多的键击.
return

KeyWinC:
if winc_presses = 1 ; 此键按下了一次.
{
    fun1()
}
else if winc_presses = 2 ; 此键按下了两次.
{
    MsgBox, 2
}
else if winc_presses > 2
{
     MsgBox, 3
}
; 不论触发了上面的哪个动作, 都对 count 进行重置
; 为下一个系列的按下做准备:
winc_presses = 0
return

fun1(){
fun2()
}

fun2(){
 Sleep, 2000
 MsgBox fun2
}

$F1::
{
WinGet, id, list, ahk_class D3 Main Window Class,, Program Manager
Loop, %id%
{
    this_id := id%A_Index%
    WinActivate, ahk_id %this_id%
    ;WinGetClass, this_class, ahk_id %this_id%
    ;WinGetTitle, this_title, ahk_id %this_id%
    ;MsgBox, 4, , Visiting All Windows`n%A_Index% of %id%`nahk_id %this_id%`nahk_class %this_class%`n%this_title%`n`nContinue?
    ;IfMsgBox, NO, break
}
}
return
$F2::
{    
ImageSearch, FoundX, FoundY, 0, 0, 1900, 1000, b.png
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
    MsgBox Icon could not be found on the screen.
else{
  MouseMove , FoundX, FoundY
 
   MsgBox The icon was found at %FoundX%x%FoundY%.
}
  
}

return
; 示例 #2: 简单的热键:5
~CapsLock::
KeyWait, CapsLock  ; 等待用户实际释放.
MsgBox You pressed and released the CapsLock key.
return

v_pc1=0 ;
var_msg_num:=1 ;

$F3:: ;
$F4:: ;
{ 
    
    SoundPlay, "notification_1.wav"
;    MsgBox, %var_msg_num% 
;var_msg_num:=1
;y=1
;var1:=var_msg_num++   ; var1=1, x=2
;var2:=++y   ; var2=2, y=2
;MsgBox, %var_msg_num%
;var3:=100 * (var_msg_num + 1)   
;MsgBox, %var3%
}

return

funx(){
    global var_msg_num
    MsgBox, %var_msg_num%
    return 100 * (%var_msg_num% + 1)   
}




; 示例 #4: 检测什么时候两次按下了某个按键(类似于双击).
; 当您使用 RControl 修饰另一个键时
; 使用 KeyWait 来停止键盘自动重复功能以避免产生不想要的两次按下.  它通过保持热键
; 线程的运行且依靠
; #MaxThreadsPerHotkey 默认设置 1 来实现拦截自动重复的目的.
; 注: 在 SetTimer 页面的底部有一个更精巧的脚本, 
; 能分辨出单次, 两次和三次按下的区别.
~RControl::
if (A_PriorHotkey <> "~RControl" or A_TimeSincePriorHotkey > 400)
{
    ; 两次按下时间间隔太长, 所以这不是一个两次按下.
    KeyWait, RControl
    return
}
MsgBox You double-pressed the right control key.
return










