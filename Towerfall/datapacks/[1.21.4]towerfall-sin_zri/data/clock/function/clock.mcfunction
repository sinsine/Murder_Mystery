scoreboard players remove Tick Clock 1
execute if score Tick Clock matches -1 run function clock:tick.flash
execute if score Sec Clock matches -1 run function clock:sec.flash