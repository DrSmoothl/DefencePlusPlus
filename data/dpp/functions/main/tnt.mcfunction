execute at @a[tag=dpp-tnt] run playsound minecraft:entity.tnt.primed block @a[tag=dpp-tnt]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-tnt]"},{"text":"试图拿取TNT","color":"red","bold":true}]
clear @a[tag=!whitelist] tnt