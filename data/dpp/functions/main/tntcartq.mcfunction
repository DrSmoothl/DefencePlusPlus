execute at @a[tag=dpp-tntcartq] run playsound minecraft:entity.wither.hurt block @a[tag=dpp-tntcartq]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-tntcartq]"},{"text":" 试图通过发射器和漏斗发射TNT矿车","color":"red","bold":true}]
clear @a[tag=!whitelist] tnt_minecart
kill @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}}]