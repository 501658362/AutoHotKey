
WizardSkill:
{
	global v_loop

	if(v_loop=1){
		;原力
		send , {4} 
	}

	if(v_loop=1){
		;电刑
		send, {e down} ;
		sleep(1600)
		send,  {e up} ;
	}

	
	if(v_loop=1){
		;陨石
		send, {Q} ;
	}

	if(v_loop=1){

		;电刑
		send,  {e down} ;
		sleep(1250)
		send,  {e up} ;
	}

	if(v_loop=1){
		;洪流
		send,  {W down} ;
		sleep(450)
		send,  {W up} 
	}

}
return     

