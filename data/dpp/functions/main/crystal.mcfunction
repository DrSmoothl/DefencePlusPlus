execute at @a[tag=dpp-crystal] run playsound minecraft:entity.ender_dragon.ambient block @a[tag=dpp-crysta]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-crystal]"},{"text":" 试图拿取末影水晶","color":"red","bold":true}]
clear @a[tag=!whitelist] end_crystal