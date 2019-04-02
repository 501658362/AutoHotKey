 

;FileCopy, ItemSets.json, D:\Program Files (x86)\英雄联盟\Game\Config, 1
dir:="C:\Program Files (x86)\英雄联盟\Game\Config"
FileCopy, game.cfg, %dir%, 1
FileCopy, PersistedSettings.json, %dir%, 1
 MsgBox,"操作完成"
;PersistedSettings.json
Exit
