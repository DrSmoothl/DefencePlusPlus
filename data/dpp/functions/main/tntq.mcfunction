execute at @a[tag=dpp-tntq] run playsound minecraft:entity.wither.hurt block @a[tag=dpp-tntq]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-tntq]"},{"text":" 试图通过发射器和漏斗发射TNT","color":"red","bold":true}]
clear @a[tag=!whitelist] tnt
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]