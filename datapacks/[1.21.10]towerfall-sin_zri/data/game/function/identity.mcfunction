tellraw @a [{text:"杀手：",color:red},{selector:"@a[scores={team=1}]",color:yellow}]
tellraw @a [{text:"侦探：",color:blue},{selector:"@a[scores={team=2}]",color:yellow}]
tellraw @a [{text:"平民：",color:green},{selector:"@a[scores={team=3}]",color:yellow}]
scoreboard players reset @a team