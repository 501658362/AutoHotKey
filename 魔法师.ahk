
mofashiStart()
{
	global v_loop
	global v_skill_flag
	v_skill_flag:=1
	if(v_loop=1){
		;原力
		send , {E} 
		sleep(50)
	}
	if(v_loop=1){
		;电刑
		send, {R down} ;
		sleep(1600)
		send,  {R up} ;
	}

	
	if(v_loop=1){
		;陨石
		send, {Q} ;
	}

	if(v_loop=1){

		;电刑
		send,  {R down} ;
		sleep(1250)
		send,  {R up} ;
	}

	if(v_loop=1){
		;洪流
		send,  {W down} ;
		sleep(450)
		send,  {W up} 
	}
	
	while(v_loop=1){
		ttttt()
	}

	
	
	
	


}
return     

ttttt(){
	global v_loop
	if(v_loop=0){
		return
	}
	
	send , {E} 
	
	if(v_loop=1){

		;电刑
		send,  {R down} ;
		sleep(3250)
		send,  {R up} ;
	}
	if(v_loop=0){
		return
	}
		
	if(v_loop=1){
		;陨石
		send, {Q} ;
	}
	if(v_loop=0){
		return
	}
	if(v_loop=1){

		;电刑
		send,  {R down} ;
		sleep(1250)
		send,  {R up} ;
	}
	if(v_loop=0){
		return
	}
	if(v_loop=1){
		;洪流
		send,  {W down} ;
		sleep(450)
		send,  {W up} 
	}
	if(v_loop=0){
		return
	} 
	
}
return


wizardStart(){
	;SetTimer, forceClick, 2000 ;鼠标左键150毫秒连点 
	SetTimer, Label1, 2000
}
return

wizardStop(){
	;SetTimer, forceClick, off ;鼠标左键150毫秒连点 
	SetTimer, Label1, off
}
return