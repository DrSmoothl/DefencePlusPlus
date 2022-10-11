execute as @a[tag=dpp-lava] at @s run playsound minecraft:entity.wither.hurt block @s
tellraw @a [{"text": "[","color": "aqua"},{"text": "Technetium","color": "gold"},{"text": "] ","color": "aqua"},{"selector":"@a[tag=dpp-lava]"},{"text":" 试图使用岩浆破坏地图","color":"red","bold":true}]
clear @a[tag=!whitelist] lava_bucket