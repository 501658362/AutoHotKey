
v_skill_flag:=0
v_loop:=0
$XButton1:: ; 技能开关键， 
{ 
	 
	If (v_skill_flag=0) 
	{
		start()
	}
	Else 
	{
		stop()
	}
} 
Return 


start() { 
	global v_skill_flag
	global v_loop
	v_loop:=1
 	SetTimer, WizardSkill, 100
	v_skill_flag:=1
	
}

stop() {

	global v_skill_flag
	v_loop:=0
	SetTimer, WizardSkill, off
	v_skill_flag:=0
	
}
 
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

sleep(ms){
    global v_loop
    v_time:=ms/50
    Loop, %v_time%{
        sleep, 50
    }
}