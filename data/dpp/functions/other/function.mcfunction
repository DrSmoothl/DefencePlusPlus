#可以设置或修改的数值有[50] [300] [200] 以下功能启用务必修改下条指令中的[Fantasist]为您的玩家名
tag @a remove dpp-Owner
tag easy_Peace add dpp-Owner
#如果需要修改以上数值请在以下找到需要修改的项目并进行修改
#-------------------------------------------分割线---------------------------------------------------
#限制实体数量
scoreboard players set @e[type=!item,type=!minecraft:player,type=!minecraft:minecart,type=!minecraft:armor_stand,type=!minecraft:falling_block] dpp-01 1
scoreboard players operation @a[tag=dpp-Owner] dpp-01 += @e[scores={dpp-01=1}] dpp-01
execute as @a[tag=dpp-Owner,scores={dpp-01=50..}] run tellraw @a [{"text": "[","color": "aqua"},{"text": "Technetium","color": "gold"},{"text": "]","color": "aqua"},{"text":"实体数量超过 50！！！已进行清理","color":"red","bold":true}]
execute as @a[tag=dpp-Owner,scores={dpp-01=50..}] run kill @e[type=!player,scores={dpp-01=1}]
scoreboard players set @a[tag=dpp-Owner] dpp-01 0
#限制掉落物数量
scoreboard players set @e[type=item] dpp-02 1
scoreboard players operation @a[tag=dpp-Owner] dpp-02 += @e[type=minecraft:item] dpp-02
execute as @e[tag=dpp-Owner,scores={dpp-02=300..}] run tellraw @a [{"text": "[","color": "aqua"},{"text": "Technetium","color": "gold"},{"text": "]","color": "aqua"},{"text":"掉落物数量超过 300！！！已清除","color":"red","bold":true}]
execute as @e[tag=dpp-Owner,scores={dpp-02=300..}] run kill @e[type=item]
scoreboard players set @a[tag=dpp-Owner] dpp-02 0
#限制下落方块数量
scoreboard players set @e[type=falling_block] dpp-03 1
scoreboard players operation @a[tag=dpp-Owner] dpp-03 += @e[type=minecraft:falling_block] dpp-03
execute as @e[tag=dpp-Owner,scores={dpp-03=200..}] run tellraw @a [{"text": "[","color": "aqua"},{"text": "Technetium","color": "gold"},{"text": "]","color": "aqua"},{"text":"下落物数量超过 200！！！已清除","color":"red","bold":true}]
execute as @e[tag=dpp-Owner,scores={dpp-03=200..}] run kill @e[type=falling_block]
scoreboard players set @a[tag=dpp-Owner] dpp-03 0
#扫地工【可控制关闭或开启】
scoreboard players add @a[tag=dpp-Owner,tag=openA] dpp-04 1
execute as @a[tag=dpp-Owner,tag=openA,scores={dpp-04=4800}] run tellraw @a [{"text":"["},{"text":"扫地工","color":"blue"},{"text":"]"},{"text":" 距离清理还剩下1分钟","color":"light_purple","bold":true}]
execute as @a[tag=dpp-Owner,tag=openA,scores={dpp-04=5400}] run tellraw @a [{"text":"["},{"text":"扫地工","color":"blue"},{"text":"]"},{"text":" 距离清理还剩下30秒","color":"light_purple","bold":true}]
execute as @a[tag=dpp-Owner,tag=openA,scores={dpp-04=5900}] run tellraw @a [{"text":"["},{"text":"扫地工","color":"blue"},{"text":"]"},{"text":" 距离清理还剩下5秒","color":"light_purple","bold":true}]
execute as @a[tag=dpp-Owner,tag=openA,scores={dpp-04=6000..}] run tellraw @a [{"text":"["},{"text":"扫地工","color":"blue"},{"text":"]"},{"text":" 成功清理qwq","color":"green","bold":true}]
execute as @a[tag=dpp-Owner,tag=openA,scores={dpp-04=6000..}] run kill @e[type=item]
execute as @a[tag=dpp-Owner,tag=openA,scores={dpp-04=6000..}] run scoreboard players set @a[tag=Owner] dpp-04 0
#队伍
team add red
team add blue
team modify red color red
team modify blue color blue
team add builderA
team add builderB
team add builderC
team add builderD
team add builderE
team add specialA
team add specialB
team add specialC
team add specialD
team add Owner
team add OP
team modify OP prefix {"text":"§4§l|巡の警|"}
team modify Owner prefix {"text":"§6§l[摸鱼の房主]"}
team modify builderA prefix {"text":"§c§l|中式建筑师|"}
team modify builderB prefix {"text":"§5§l|中世纪建筑师|"}
team modify builderC prefix {"text":"§7§l|军工建筑师|"}
team modify builderD prefix {"text":"§b§l|现代建筑师|"}
team modify builderE prefix {"text":"§f§l|摸鱼建筑师|"}
team modify specialA prefix {"text":"§c§l》摸鱼带师《"}







