scoreboard objectives add options dummy [{"text":"配置"}]
team add t [{"text":"杀手","color":"dark_red"}]
team add ct [{"text":"侦探","color":"dark_blue"}]
team add pm [{"text":"平民","color":"gray"}]
team add killed [{text:"旁观者",color:green}]
team modify killed color green
team modify killed friendlyFire false
team modify killed collisionRule never
team modify killed prefix [{text:"旁观者",color:green}]
bossbar add game_count [{text:"剩余时间",color:yellow}]
bossbar set minecraft:game_count max 6000
scoreboard objectives add death deathCount [{text:"死亡检测",color:red}]
bossbar set minecraft:game_count players @a
bossbar set minecraft:game_count visible false
scoreboard objectives add team dummy [{text:"队伍 匪1 警2 平3 死4"}]