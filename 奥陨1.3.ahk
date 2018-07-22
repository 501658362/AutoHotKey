#maxThreadsPerHotkey, 2 

SetKeyDelay,20
SetMouseDelay,20


b=981   ;替换输入你的巅峰等级，最好比你的巅峰大一些
c:=Ceil((b-700)/100)  
i=0
abb=0

$mbutton::  ;切巅峰，使用前将暗黑中关闭所有打开窗口设置为a

abb:=!abb
if (abb=1)  ;智力模式
{
send a  ;关闭所有
send i
click 2005,297  ;巅峰按钮，请记录
click 1243,987  ;重置按钮，请记录
send ^{click 1707,696} ;移速位置，请记录
send ^{click 1707,820} ;奥能上限位置，请记录
loop,%c%
{
send ^{click 1691,570} ;体能位置，请记录
}

click 1087,1113 ;确认按钮，请记录
send a   ;关闭所有界面
}
else   ;体能模式
{
send a
send i
click 2005,297 ;巅峰按钮，请记录
click,1243,987  ;重置按钮，请记录
send ^{click 1707,696} ;移速位置，请记录
send ^{click 1707,820} ;奥能上限位置，请记录
loop,%c%
{
send ^{click 1696,437}  ;智力位置，请记录
}
click 1087,1113 ;确认按钮，请记录
send a
}
return


;space::pause 没用的暂停


;Return


;F6::   ;制作中
;loop
;{
;pixelgetcolor, color, -496, 619, rgb
;if color = 0xFF9D9B
;send, 1
;}
;Return

;先定个小目标：c长按左键为强制站立，长按右键为奥陨
;按第一个左键输出左键，长按左键为长按e


$lbutton::
keywait,lbutton,t0.1
if errorlevel=1
{
loop
{
if not getkeystate("lbutton","P")
break
send {e}
sleep 50
}
}
else
{
send {lbutton}
}
return

$rbutton::
keywait,rbutton,t0.1
if (errorlevel=1&&abb=0)
{
loop
{
send {z down}
send {3 down}  ;原力波
sleep 50
if not getkeystate("rbutton","P")
{
send {z up}
send {Rbutton up}
send {Lbutton up}
send {1 up}
break
}
send {3 up} 
sleep 50
if not getkeystate("rbutton","P")
{
send {z up}
send {Rbutton up}
send {Lbutton up}
send {1 up}
break
}
send {Rbutton down}
sleep 1600
if not getkeystate("rbutton","P")
{
send {z up}
send {Rbutton up}
send {Lbutton up}
send {1 up}
break
}
send {Rbutton up}
send {1 down} ; 陨石
sleep 50
send {1 up}
sleep 50
if not getkeystate("rbutton","P")
{
send {z up}
send {Rbutton up}
send {Lbutton up}
send {1 up}
break
}
send {Rbutton down} ;电刑
sleep 980
if not getkeystate("rbutton","P")
{
send {z up}
send {Rbutton up}
send {Lbutton up}
send {1 up}
break
}
send {Rbutton up}
send {Lbutton down} ;洪流
sleep 400
if not getkeystate("rbutton","P")
{
send {z up}
send {Rbutton up}
send {Lbutton up}
send {1 up}
break
}
send {Lbutton up}
send {z up} 
}
}
if errorlevel=0
{
send {rbutton}
}

return