execute at @a[tag=dpp-tntbomb] run playsound minecraft:entity.wither.hurt block @a[tag=dpp-tntbomb]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-tntbomb]"},{"text":" 试图点燃TNT","color":"red","bold":true}]
kill @e[type=tnt]