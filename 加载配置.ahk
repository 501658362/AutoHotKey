 

 loadConfigFIle(){
 
	loadFIle()

	if FileExist("hero.config"){

		FileReadLine, line, hero.config,1
		v_game1:=line

		changeHeroSkill(v_game1)
	}
	 
}