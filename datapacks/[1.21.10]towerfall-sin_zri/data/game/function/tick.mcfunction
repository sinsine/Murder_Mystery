#计时器
execute if score stage options matches 3 if score game_count options matches 1..6000 run scoreboard players remove game_count options 1
execute unless score stage options matches 3 run scoreboard players set game_count options 0
execute store result bossbar minecraft:game_count value run scoreboard players get game_count options

#死亡检测
execute as @a[scores={death=1..}] at @s run function game:dead

#反退出
execute if score stage options matches 3 run team join killed @a[team=]
scoreboard players set @a[team=killed] team 4
#身份显示
title @a[scores={team=1}] actionbar [{text:"您的身份是 ",color:yellow},{text:"杀手",color:red,bold:true}]
title @a[scores={team=2}] actionbar [{text:"您的身份是 ",color:yellow},{text:"侦探",color:blue,bold:true}]
title @a[scores={team=3}] actionbar [{text:"您的身份是 ",color:yellow},{text:"平民",color:green,bold:true}]
title @a[scores={team=4}] actionbar [{text:"你没参加游戏！等下一局吧。",color:red,bold:true}]

#胜利检测
#时间耗尽
execute if score stage options matches 3 if score game_count options matches 1 run function game:ct_win
#杀手死亡
execute if score stage options matches 3 unless entity @a[team=t] run function game:ct_win
#杀手胜利
execute if score stage options matches 3 unless entity @a[team=pm] unless entity @a[team=ct] run function game:t_win