;#IfWinActive,ahk_class D3 Main Window Class 

;圣教军全能法戒天谴流AHK宏
;按F2启动或暂停宏
;全能法戒大米宏在原来的基础上关闭了挑衅和律法技能连点功能，点击右键钢甲的时候同时触发挑衅和律法技能，所以右键钢甲的释放时机是火焰1秒
;可以自行修改的地方都做了注释，比如想原来那种无脑1234左右键+强制移动键x自动按，那么在标明可改动的技能按键连点计时器周期数字和off都换成对应的参考时间间隔即可
;对于那些按键设置并不是1234x的玩家，请进游戏按esc-选项-按键绑定，可看到界面上指令、按键1、按键2，按键1对应的指令设成自己的习惯按键，按键2对应的指令设成1234x就行，这样天谴宏不影响你玩其他职业也不影响你之前的按键习惯

SetKeyDelay,20
SetMouseDelay,20

v_Enable=0 

$F2:: ;开关键，鼠标有侧键的玩家，可以将F2换成鼠标侧键对应的代码XButton1、XButton2
{ 
v_Enable:=!v_Enable 
If (v_Enable=0) 
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
}
Else 
{
SetTimer, Label1, 600 ;动作条技能1键600毫秒连点，对应天谴技能，600可改动
SetTimer, Label2, 600 ;动作条技能2键600毫秒连点关闭挑衅自动按，600可改动，这里建议还是开启自动按
SetTimer, Label3, off ;动作条技能3键600毫秒连点关闭律法自动按，off可改动，
SetTimer, Label4, 600 ;动作条技能4键600毫秒连点，对应勇士技能，600可改动
SetTimer, MouseLButton, 150 ;鼠标左键150毫秒连点，150可改动
SetTimer, MouseRButton, off ;鼠标右键600毫秒连点关闭钢甲自动按，off可改动
Send {x down} ;按住强制移动键x，x可改动
}
} 
Return 

~Enter:: ;回车打字关闭宏
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return

~T:: ;按T回城关闭宏
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return

~S:: ;按S查看技能关闭宏
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return

~I:: ;按I查看装备关闭宏
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return

~M:: ;按M查看悬赏关闭宏
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return

Label1:
{
Send {1} ;动作条技能1键对应按键,1可改动
Return
}

Label2:
{
Send {2} ;动作条技能2键对应按键,2可改动
Return
}

Label3:
{
Send {3} ;动作条技能3键对应按键,3可改动
Return
}

Label4:
{
Send {4} ;动作条技能4键对应按键,4可改动
Return
}

MouseLButton:
{
Click ;点击鼠标左键，对应主要技能
IfWinNotActive,暗黑破坏神III
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return
}

MouseRButton:
{
Click Right ;点击鼠标右键，对应钢甲技能
IfWinNotActive,暗黑破坏神III
{
SetTimer, Label1, off ;关闭技能1连点计时器，off不可改动
SetTimer, Label2, off ;关闭技能2连点计时器，off不可改动
SetTimer, Label3, off ;关闭技能3连点计时器，off不可改动
SetTimer, Label4, off ;关闭技能4连点计时器，off不可改动
SetTimer, MouseLButton, off ;关闭左键连点计时器，off不可改动
SetTimer, MouseRButton, off ;关闭右键连点计时器，off不可改动
Send {x up} ;松开强制移动键x，x可改动
v_Enable=0
}
Return
}

$RButton:: ;火焰1秒的时候开启右键钢甲的同时自动触发挑衅和律法
if v_Enable=1
{
Send {2} ;动作条技能2键对应按键,2可改动，对应挑衅技能
Send {3} ;动作条技能3键对应按键,3可改动，对应律法技能
}
Click Right ;点击鼠标右键，对应钢甲技能
Return
 