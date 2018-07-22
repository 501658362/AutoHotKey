#Include public.ahk

; 切换英雄  1是魔法师 2是圣教军
$Right::
if right_presses > 0 ; SetTimer 已经启动, 所以我们记录键击.
{
    right_presses += 1
    return
}
; 否则, 这是新开始系列中的首次按下. 把次数设为 1 并启动
; 计时器:
right_presses = 1
SetTimer, RightPause, -400 ; 在 400 毫秒内等待更多的键击.
return
RightPause:
v_loop:=1
changeHero(right_presses) 
; 不论触发了上面的哪个动作, 都对 count 进行重置
; 为下一个系列的按下做准备:
right_presses = 0
return


$left::
{
	if(!v_number_key){
		return
	}
	v_loop:=1
	pickUp()
	destroyGui()
	
}
return

; 小号扔装备
$down::
{
	if(!v_number_key){
		return
	}
	showMsg("小号扔装备")
	changeWin(4)
	moveToCenter() 
	destroyGui()
}
return

$up::
{
	
	if(!v_number_key){
		return
	}
	showMsg("升级宝石")
	; 升级宝石
	newUpdateGem(3) 
	destroyGui()
}
return