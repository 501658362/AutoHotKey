
#IfWinActive,ahk_class D3 Main Window Class 

#Include public.ahk

;圣教军全能法戒天谴流AHK宏



~RButton:: ;
{ 
	runFast(v_comisson)
}
Return

~LButton:: ;
{ 
	clickStart(v_comisson)
}
Return

$XButton1:: ;开关键，鼠标有侧键的玩家，可以将F2换成鼠标侧键对应的代码XButton1、XButton2
{ 
	 
	If (v_shengjiaojun_flag=0) 
	{
		
		start()
	}
	Else 
	{
		stop()
	}
} 
Return 

 
