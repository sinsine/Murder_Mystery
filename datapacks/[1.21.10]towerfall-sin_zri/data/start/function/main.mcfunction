execute as @a at @s run playsound minecraft:entity.arrow.hit_player
tellraw @a [{"text":"------------------------------分界线------------------------------","color":"yellow"}]
tellraw @a [{"text":"谁   是   杀   手      ","color":"dark_red"},{"text":"作者：","color":"green"},{"text":"sin_zri","color":"green"}]
tellraw @a [{"text":"版本：","color":"white"},{"text":"Beta2.0.0","color":"yellow"}]
tellraw @a [{"text":"游戏规则","color":"dark_red"}]
tellraw @a [{"text":"每局游戏开始时，系统会随机分配一名玩家为杀手，一名玩家为侦探，其余玩家均为平民。\
杀手需要暗中用剑杀死所有其他玩家；侦探则拥有一把弓，可以射杀杀手；平民需要在地图上收集金锭，金锭可以用于购买弓箭。\
如果杀手成功消灭所有平民和侦探，则杀手获胜；\
如果杀手死亡，则好人阵营获胜。","color":"white"}]
tellraw @a [{"text":"玩法教学","color":"dark_red"}]
tellraw @a [{"text":"存活的玩家打开背包即可点击背包左上角的物品进行快捷购买","color":"white"}]
tellraw @a [{"text":"误食金锭可能会发生意想不到的事情","color":"white","italic":1b,"strikethrough":1b}]
tellraw @a [{"text":"Github工程链接（给颗星吧求求了）    ","color":"green"},{"text":"【网页链接】","color":"yellow",\
"click_event":{action:open_url,url:"https://github.com/sinsine/Murder_Mystery"}}]
tellraw @a [{"text":"------------------------------分界线------------------------------","color":"yellow"}]