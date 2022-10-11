execute at @a[tag=dpp-tntcart] run playsound minecraft:entity.tnt.primed block @a[tag=dpp-tntcart]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-tntcart]"},{"text":" 试图拿取TNT矿车","color":"red","bold":true}]
clear @a[tag=!whitelist] tnt_minecart