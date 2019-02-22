#if v_trg = 1 and WinActive("ahk_class D3 Main Window Class")
$^1::
{
	changeHeroSkill(1)
}
return

$^2::
{
	changeHeroSkill(2)
}
return

$^3::
{
	changeHeroSkill(3)
}
return


$^4::
{
	changeHeroSkill(4)
}
return

$^5::
{
	changeHeroSkill(5)
}
return

$^6::
{
	changeHeroSkill(6)
}
return
$^7::
{
	changeHeroSkill(7)
}
return

$^8::
{
	changeHeroSkill(8)
}
return
$^9::
{
	changeHeroSkill(9)
}
return

#if


changeHeroSkill(x = 0){
	global v_current_hero
	global v_current_hero_name
	v_current_hero:=x ;当前英雄 1=圣教军 2=魔法师 3=武僧 4=奶僧
	stop()
	if(x = 1){
		v_current_hero_name:="圣教军"
	}else if(x = 2){
		v_current_hero_name:="魔法师"
	}else if (x = 3){
		v_current_hero_name:="武僧"
	}else if (x = 4){
		v_current_hero_name:="奶僧"
	}else if (x = 5){
		v_current_hero_name:="塔魔法师"
	}else if (x = 6){
		v_current_hero_name:="散件火钟"
	}else if (x = 7){
		v_current_hero_name:="幻魔荆棘"
	}else if (x = 8){
		v_current_hero_name:="不朽野蛮人"
	}else if (x = 9){
		v_current_hero_name:="猎魔"
	}
	
	else{
		v_current_hero_name:="圣教军"
	}
	showMsg("切换" v_current_hero_name "技能")

	FileDelete, hero.config
    FileAppend, %x%,  hero.config
}