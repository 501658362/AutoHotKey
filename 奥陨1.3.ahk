#maxThreadsPerHotkey, 2 

SetKeyDelay,20
SetMouseDelay,20


b=981   ;�滻��������۷�ȼ�����ñ�����۷��һЩ
c:=Ceil((b-700)/100)  
i=0
abb=0

$mbutton::  ;���۷壬ʹ��ǰ�������йر����д򿪴�������Ϊa

abb:=!abb
if (abb=1)  ;����ģʽ
{
send a  ;�ر�����
send i
click 2005,297  ;�۷尴ť�����¼
click 1243,987  ;���ð�ť�����¼
send ^{click 1707,696} ;����λ�ã����¼
send ^{click 1707,820} ;��������λ�ã����¼
loop,%c%
{
send ^{click 1691,570} ;����λ�ã����¼
}

click 1087,1113 ;ȷ�ϰ�ť�����¼
send a   ;�ر����н���
}
else   ;����ģʽ
{
send a
send i
click 2005,297 ;�۷尴ť�����¼
click,1243,987  ;���ð�ť�����¼
send ^{click 1707,696} ;����λ�ã����¼
send ^{click 1707,820} ;��������λ�ã����¼
loop,%c%
{
send ^{click 1696,437}  ;����λ�ã����¼
}
click 1087,1113 ;ȷ�ϰ�ť�����¼
send a
}
return


;space::pause û�õ���ͣ


;Return


;F6::   ;������
;loop
;{
;pixelgetcolor, color, -496, 619, rgb
;if color = 0xFF9D9B
;send, 1
;}
;Return

;�ȶ���СĿ�꣺c�������Ϊǿ��վ���������Ҽ�Ϊ����
;����һ��������������������Ϊ����e


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
send {3 down}  ;ԭ����
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
send {1 down} ; ��ʯ
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
send {Rbutton down} ;����
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
send {Lbutton down} ;����
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