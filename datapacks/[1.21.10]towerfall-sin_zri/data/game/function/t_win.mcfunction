scoreboard players set stage options 0
execute as @a run playsound minecraft:entity.wither.death
title @a title [{text:"杀手获胜",color:red}]
tp @a -18.50 181.00 0.50
execute as @a run team leave @a
bossbar set minecraft:game_count visible false
function game:identity