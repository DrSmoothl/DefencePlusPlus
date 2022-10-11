#世界设置
#本函数将在load函数中加载

gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule mobGriefing
gamerule doMobSpawning false
gamerule doFireTick false
gamerule keepInventory true
gamerule spawnRadius 1
kill @e[type=!player]
tellraw @a [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ]","color": "aqua"},{"text": " Defence Plus Plus","color": "dark_aqua"},{"text":"  | 世界设置成功！","color":"green","bold":false}]