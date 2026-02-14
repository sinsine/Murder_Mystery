tellraw @a [{selector:"@s",color:yellow},{text:" 死了",color:dark_red}]
execute as @a run playsound minecraft:entity.lightning_bolt.thunder
playsound minecraft:entity.wither.spawn
clear @s
team join killed @s
scoreboard players set @s death 0