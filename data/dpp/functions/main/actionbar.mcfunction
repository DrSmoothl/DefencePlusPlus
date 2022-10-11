#defence指数
execute as @a run title @s actionbar [{"text":"在线时间:","color":"white"},{"text":" | ","color":"red"},{"text": "0","color": "white"},{"score":{"name":"@s","objective":"dpp-13"}},{"text":" 小时","color":"aqua"},{"text":" | ","color":"red"},{"text": "0","color": "white"},{"score":{"name":"@s","objective":"dpp-12"}},{"text":" 分钟","color":"aqua"},{"text":" | ","color":"red"},{"text": "0","color": "white"},{"score":{"name":"@s","objective":"dpp-11"}},{"text":" 秒","color":"aqua"},{"text":" | ","color":"red"},{"text": " 违规次数: "},{"score":{"name":"@s","objective":"dpp-14"},"color": "green"},{"text": " / ","color": "aqua"},{"text": "10","color": "white"}]
#在线时间
scoreboard players add @a dpp-10 1
scoreboard players add @e[scores={dpp-10=20..}] dpp-11 1
scoreboard players set @e[scores={dpp-10=20..}] dpp-10 0
scoreboard players add @e[scores={dpp-11=60..}] dpp-12 1
scoreboard players set @e[scores={dpp-11=60..}] dpp-11 0
scoreboard players add @e[scores={dpp-12=60..}] dpp-13 1
scoreboard players set @e[scores={dpp-12=60..}] dpp-12 0



