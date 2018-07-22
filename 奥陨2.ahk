#maxThreadsPerHotkey, 2 

v_Enable=0 
$XButton2:: ;F1开关
;1234随意替换你的技能键位,Rbutton是右键,Lbutton是左键
{
v_Enable:=!v_Enable
while (v_Enable=1){

	if(v_Enable=1){
		send {3 down} ;
		send {3 up} 
		sleep 50
	}

	if(v_Enable=1){
		send {2 down} ; 1陨石 2电刑 3原力 4洪流 
		sleep 1600
		send {2 up} ;
	}

	
	if(v_Enable=1){
		send {1 down} 
		send {1 up} 
		send {2 down} 
	}

	if(v_Enable=1){
		sleep 1100 ; 
		send {2 up}
		send {4 down} ;
	}

	if(v_Enable=1){
		sleep 370
		send {4 up} 
	}

}
}
