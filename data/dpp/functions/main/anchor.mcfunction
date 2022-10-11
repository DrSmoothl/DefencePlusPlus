execute as @a[tag=dpp-anchor] at @s run playsound minecraft:block.respawn_anchor.charge block @s
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-anchor]"},{"text":" 试图拿取重生锚","color":"red","bold":true}]
clear @a[tag=!whitelist] minecraft:respawn_anchor