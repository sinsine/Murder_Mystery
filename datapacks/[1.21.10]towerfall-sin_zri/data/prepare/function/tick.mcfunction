#准备中玩家的数量检测
execute store result score readying options run execute positioned -12.30 181.00 -1.70 if entity @a[dx=-3.7,dy=2,dz=3.7]

#如果准备人数达到4人，进入stage1
execute if score stage options matches 0 if score readying options matches 4.. run scoreboard players set stage options 1
execute if score stage options matches 1 if score readying options matches ..3 run scoreboard players set stage options 0

#进入stage1后做的事
execute if score stage options matches 1 run fill -13 179 -2 -16 179 2 minecraft:redstone_block
execute unless score stage options matches 1 run fill -13 179 -2 -16 179 2 air
execute unless score stage options matches 1 run scoreboard players set ready_count options 0
execute if score stage options matches 1 if score ready_count options matches 0 run scoreboard players set ready_count options 100
execute if score stage options matches 1 if score ready_count options matches 1..100 run scoreboard players remove ready_count options 1
execute if score stage options matches 1 if score ready_count options matches 0 run scoreboard players set stage options 2
execute if score stage options matches 2 run function game:team
execute if score stage options matches 2 run scoreboard players set stage options 3