CoordMode, Mouse, Screen

run C:\Users\Chen\Desktop\声音

Sleep, 1000
dm:=ComObjCreate("dm.dmsoft")
		
pos1:= dm.FindPicE(	0, 0, 	1920, 1080, "C:\Users\Chen\Desktop\dm\gameimg\耳机扬声器.bmp","000000", 0.93 ,0)


;MsgBox, %pos1%

Array := StrSplit(pos1 , "|")
x1:=Array[2]
y1:=Array[3]

if(x1 = -1){
	return
}

y1:=y1-60
Click, %x1%,  %y1%

Sleep, 500

Send, !s

send, {Enter}