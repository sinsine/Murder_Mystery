execute positioned -12.30 181.00 -1.70 as @r[dx=-3.7,dy=2,dz=3.7,team=,limit=1] run team join t
execute positioned -12.30 181.00 -1.70 as @r[dx=-3.7,dy=2,dz=3.7,team=,limit=1] run team join ct
execute positioned -12.30 181.00 -1.70 as @a[dx=-3.7,dy=2,dz=3.7,team=] run team join pm
execute as @a[team=] run team join killed
tp @a[team=!killed] 0.50 161.00 0.50
scoreboard players set game_count options 6000
bossbar set minecraft:game_count visible true
execute as @a run playsound minecraft:entity.ender_dragon.ambient
title @a[team=ct] title [{text:"你的身份是：",color:"yellow"},{text:"侦探",color:dark_blue}]
title @a[team=t] title [{text:"你的身份是：",color:"yellow"},{text:"杀手",color:dark_red}]
title @a[team=pm] title [{text:"你的身份是：",color:"yellow"},{text:"平民",color:green}]
title @a[team=killed] title [{text:"你的身份是：？",color:"yellow"},{text:"为什么你没参加？",color:yellow}]
effect give @a[team=!killed] blindness 3 0 true
scoreboard players set @a[team=t] team 1
scoreboard players set @a[team=ct] team 2
scoreboard players set @a[team=pm] team 3
scoreboard players set @a[team=killed] team 4
function start:main