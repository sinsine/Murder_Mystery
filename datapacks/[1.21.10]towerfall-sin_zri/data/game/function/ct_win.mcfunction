scoreboard players set stage options 0
execute as @a run playsound minecraft:entity.ender_dragon.death
title @a title [{text:"好人获胜",color:green}]
tp @a -18.50 181.00 0.50
execute as @a run team leave @a
bossbar set minecraft:game_count visible false
function game:identity