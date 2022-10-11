#欢迎使用防熊函数，作者:DrSmooth esay_peace 版本号:正式版2.0
#步骤: 进入游戏→安装文件到datapacks→修改设置并保存→在游戏中输入/reload→重启游戏→成功！【注意：1.16.5的创世神mod会因为/reload执行后失效】
#公告设置请打开data\common\functions\notice.mcfunction  功能设置请打开data\function\functions\function 【请仔细按照提示信息进行安装】
#标签移除和规则设置
tag @a remove dpp-tnt
tag @a remove dpp-crystal
tag @a remove dpp-anchor
tag @a remove dpp-tntcart
tag @a remove dpp-tntq
tag @a remove dpp-tntcartq
tag @a remove dpp-tntbomb
tag @a remove dpp-lava
tag @a remove dpp-chest
tag @a remove dpp-attribute
#TNT
execute as @a[nbt={Inventory:[{id:"minecraft:tnt"}]},tag=!whitelist] run tag @s add dpp-tnt
execute as @a[tag=dpp-tnt] run function dpp:main/tnt
execute as @a[nbt={Inventory:[{id:"minecraft:tnt_minecart"}]},tag=!whitelist] run tag @s add dpp-tntcart
execute as @a[tag=dpp-tntcart] run function dpp:main/tntcart
execute at @e[type=item,nbt={Item:{id:"minecraft:dpp-tnt"}}] as @a[tag=!whitelist,distance=..5] run tag @s add dpp-tntq
execute as @a[tag=dpp-tntq] run function dpp:main/tntq
execute at @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}}] as @a[tag=!whitelist,distance=..5] run tag @s add dpp-tntcartq
execute as @a[tag=dpp-tntcartq] run function dpp:main/tntcartq
execute at @e[type=tnt] as @a[distance=..10] run tag @s add dpp-tntbomb
execute as @a[tag=dpp-tntbomb] run function dpp:main/tntbomb
#末影水晶
execute as @a[nbt={Inventory:[{id:"minecraft:end_crystal"}]},tag=!whitelist] run tag @s add dpp-crystal
execute as @a[tag=dpp-crystal] run function dpp:main/crystal
execute as @e[type=end_crystal] at @s run tellraw @a [{"text": "[","color": "aqua"},{"text": "Technetium","color": "gold"},{"text": "]","color": "aqua"},{"text":" 有末影水晶实体生成,附近玩家为:","color":"red","bold":true},{"selector":"@p","color":"white","bold":true}]
kill @e[type=end_crystal]
#重生锚
execute as @a[nbt={Inventory:[{id:"minecraft:respawn_anchor"}]},tag=!whitelist] run tag @s add dpp-anchor
execute at @e[type=item,nbt={Item:{id:"minecraft:respawn_anchor"}}] as @a[tag=!whitelist,distance=..5] run tag @s add dpp-anchor
execute as @a[tag=dpp-anchor] run function dpp:main/anchor
kill @e[type=item,nbt={Item:{id:"minecraft:respawn_anchor"}}]
#岩浆
execute as @a[tag=!whitelist,nbt={Inventory:[{id:"minecraft:lava_bucket"}]}] run tag @s add dpp-lava
execute as @e[type=item,nbt={Item:{id:"minecraft:lava_bucket"}}] as @a[tag=!whitelist,distance=..5] run tag @s add dpp-lava
execute as @a[tag=dpp-lava] run function dpp:main/lava
#发射器
execute as @a[tag=!rs_allow,nbt={Inventory:[{id:"minecraft:dispenser"}]}] run tellraw @a [{"text": "[","color": "aqua"},{"text":"§9§D§cD§6P"},{"text": "]","color": "aqua"},{"selector":"@s","color":"aqua"},{"text":" 想要使用发射器","color":"red"}]
clear @a[tag=!rs_allow] dispenser
#烟花实体
execute as @e[type=wither] run tellraw @a [{"text": "[","color": "aqua"},{"text":"§9§D§cD§6P"},{"text": "]","color": "aqua"},{"text":"发现凋零,附近玩家为","color":"red","bold":true},{"selector":"@p","color":"white","bold":true}]
execute at @e[type=firework_rocket,nbt={FireworksItem:{tag:{Fireworks:{}}}}] as @p[nbt={Inventory:[{id:"minecraft:firework_rocket",tag:{Fireworks:{}}}]}] run tellraw @a [{"text": "[","color": "aqua"},{"text":"§9§D§cD§6P"},{"text": "]","color": "aqua"},{"text":" 发现携带nbt的烟花,附近玩家为","color":"red","bold":true},{"selector":"@s","color":"white","bold":true}]
kill @e[type=wither]
kill @e[type=firework_rocket,nbt={FireworksItem:{tag:{Fireworks:{}}}}]
#带nbt的箱子
tag @a[tag=!whitelist,nbt={Inventory:[{tag:{BlockEntityTag:{}}}]}] add dpp-chest
clear @a[tag=dpp-chest]
execute as @a[tag=dpp-chest] run tellraw @a [{"text": "[ ","color": "aqua"},{"text":"§9§D§cD§6P"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-chest]"},{"text":"无权拿取nbt容器","color":"red","bold":true}]
#属性装备
tag @a[tag=!whitelist,nbt={Inventory:[{tag:{AttributeModifiers:[{AttributeName:"forge:reach_distance"}]}}]}] add dpp-attribute
clear @a[tag=dpp-attribute]
execute as @a[tag=dpp-attribute] run tellraw @a [{"text": "[ ","color": "aqua"},{"text":"§9§D§cD§6P"},{"text": " ] ","color": "aqua"},{"selector":"@a[tag=dpp-attribute]"},{"text":"无权拿取加距离属性装备","color":"red","bold":true}]
#记录次数
scoreboard players add @a[tag=dpp-tnt] dpp-14 1
scoreboard players add @a[tag=dpp-crystal] dpp-14 1
scoreboard players add @a[tag=dpp-anchor] dpp-14 1
scoreboard players add @a[tag=dpp-tntcart] dpp-14 1
scoreboard players add @a[tag=dpp-tntq] dpp-14 1
scoreboard players add @a[tag=dpp-tntcartq] dpp-14 1
scoreboard players add @a[tag=dpp-tntbomb] dpp-14 1
scoreboard players add @a[tag=dpp-lava] dpp-14 1
scoreboard players add @a[tag=dpp-chest] dpp-14 1
scoreboard players add @a[tag=dpp-attribute] dpp-14 1
scoreboard players set @a[tag=whitelist] dpp-14 0