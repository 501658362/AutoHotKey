var_current_check:=0
var_x:=0
#Persistent
SetTimer, RemoveToolTip, 3000
return


$k::
{ 
	PixelGetColor, color, 1762, 275
	MsgBox, %color%
	if(color = 0x1C5D57){
		MsgBox, 1
	}
 
}

return
$x::
{
	global var_x
	var_x:=var_x+1
	ToolTip, xxxx, 100, 150
	ToolTip, Timed ToolTip`nThis will be displayed for 5 seconds., 200, 150, var_x
}

return
$b::
{
	global var_x
	var_x:=var_x+1	
	if(var_x > 20){
		var_x:=20
	}
	ToolTip, Timed ToolTip`nThis will be displayed for 5 seconds., 100, 50*var_x, var_x
}

return

$c::
{
	ToolTip 
}

return

 
RemoveToolTip:
global var_x
global var_current_check
if(var_x != var_current_check){
	if(var_x > 0){
	var_current_check:=var_x
	return
	}
}
if(var_x > 0){
	loop %var_x%{
		ToolTip,,,, A_Index
	}
	var_x:=0
}else{
	ToolTip
}
ToolTip
return