#.......................
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b}}] at @s if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run summon minecraft:armor_stand ~ ~-1 ~ {ShowArms:1b,Invisible:1b,HandItems:[{id:"minecraft:redstone_block",Count:1b},{id:"minecraft:nether_star",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}],Pose:{Hand:[1f,1f,1f]},NoGravity:0b,Pose:{Head:[180f,180f,0f]},Tags:["craft"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b}}] at @s if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run scoreboard players set @e[type=minecraft:armor_stand,distance=..2,tag=dpp-dpp-craft] dpp-07 60
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b}}] at @s if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run kill @e[type=item,distance=..2]
execute as @e[tag=dpp-craft,type=minecraft:armor_stand,scores={dpp-07=1..}] at @s run tp @s ~ ~0.05 ~ ~10 ~
execute at @e[tag=dpp-craft,type=minecraft:armor_stand,scores={dpp-07=1..}] run particle minecraft:firework ~ ~ ~ 2 1 2 0.01 1 force @a
execute at @e[tag=dpp-craft,type=minecraft:armor_stand,scores={dpp-07=1..}] run particle minecraft:dragon_breath ~ ~ ~ 2 1 2 0.01 1 force @a
scoreboard players remove @e[type=minecraft:armor_stand,tag=dpp-craft] dpp-07 1
execute at @e[type=minecraft:armor_stand,scores={dpp-07=1},tag=dpp-craft] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"管理菜单[按F使用]","italic":false,"color":"yellow","bold":true}',Lore:['{"text":"欢迎使用菜单,该函数指令作者为Peace","color":"green","bold":true,"italic":false}']},Enchantments:[{id:"0",lvl:1}]}}}
execute as @e[type=minecraft:armor_stand,scores={dpp-07=1},tag=dpp-craft] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 1
kill @e[type=minecraft:armor_stand,tag=dpp-craft,scores={dpp-07=..0}]
#.......................
tag @a remove dpp-menu
tag @a[nbt={Inventory:[{id:"minecraft:clock",Slot:-106b,tag:{Enchantments:[{id:"0"}]}}]}] add dpp-menu
tellraw @a[tag=dpp-menu] [{"text":"--------------------------------\n","color":"yellow"},{"text":"             管理员菜单","color":"green","bold":true},"\n",{"text":"[调节时间天气]\n","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add dpp-timeweather"}},{"text":"[跨越维度]\n","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add dpp-dimensiontp"}},{"text":"[功能开关]\n","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add dpp-function"}},{"text":"[权限给予]","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add dpp-allowlist"}}]
item replace entity @a[tag=dpp-menu] weapon.offhand with air
item replace entity @a[tag=dpp-menu] weapon.mainhand with clock{display:{Name:'{"text":"管理菜单[按F使用]","italic":false,"color":"yellow","bold":true}',Lore:['{"text":"欢迎使用菜单,该函数指令作者为Peace","color":"green","bold":true,"italic":false}']},Enchantments:[{id:"0",lvl:1}]}
#......................................
execute as @a[tag=dpp-function] run tellraw @s [{"text":"----------------------------------------","color":"yellow"},{"text":"\n[扫地工]","color":"blue"},{"text":"       [开]","color":"green","clickEvent":{"action":"run_command","value":"/tag @a[tag=dpp-Owner] add openA"}},{"text":"   [关]","color":"red","clickEvent":{"action":"run_command","value":"/tag @a[tag=dpp-Owner] remove openA"}}]
tag @a remove dpp-function
execute as @a[tag=dpp-dimensiontp] run tellraw @s [{"text":"--------------------------------------------","color":"yellow"},{"text":"\n分维度的tp坐标为0 5 0,地狱、主世界、末地为对应坐标","color":"red","underlined":true},{"text":"\n[主世界]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s in minecraft:overworld run tp ~ ~ ~"}},{"text":"  [地狱]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s in minecraft:the_nether run tp ~ ~ ~"}},{"text":"   [末地]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s in minecraft:the_end run tp ~ ~ ~"}},{"text":"\n[分维度1]","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in common:dimension1 run tp 0 5 0"}},{"text":"   [分维度2]","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in common:dimension2 run tp 0 5 0"}},{"text":"   [分维度3]","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in common:dimension3 run tp 0 5 0"}},{"text":"\n[分维度4]","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in common:dimension4 run tp 0 5 0"}},{"text":"   [分维度5]","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in common:dimension5 run tp 0 5 0"}},{"text":"   [分维度6]","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in common:dimension6 run tp 0 5 0"}}]
tag @a remove dpp-dimensiontp
execute as @a[tag=dpp-timeweather] run tellraw @s [{"text":"--------------------------------","color":"yellow"},{"text":"\n            时间","color":"aqua","bold":true},"\n",{"text":"\n[白天]","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[tag=dpp-Owner] dpp-06 1"}},{"text":"   [黑夜]","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[tag=dpp-Owner] dpp-06 2"}},{"text":"   [昼夜更替]","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[tag=dpp-Owner] dpp-06 0"}},"\n",{"text":"\n            天气","color":"aqua","bold":true},"\n",{"text":"\n[晴天]","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[tag=dpp-Owner] dpp-05 0"}},{"text":"   [雨天]","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[tag=dpp-Owner] dpp-05 1"}},{"text":"   [雷雨天]","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[tag=dpp-Owner] dpp-05 2"}}]
tag @a remove dpp-timeweather
execute as @a[tag=dpp-allowlist] run tellraw @s [{"text":"-------------------------------------","color":"yellow"},{"text":"\n使用/tag [玩家名字] add/remove [对应权限] \n来添加/删除权限","color":"green","underlined":true},{"text":"\n\n红石权限:rs_allow","color":"red"},{"text":"\n违规物品权限:whitelist","color":"red"},{"text":"\n刷怪蛋权限:egg","color":"red"}]
tag @a remove dpp-allowlist
#...........................
execute as @a[tag=dpp-Owner,scores={dpp-06=1}] run time set day
execute as @a[tag=dpp-Owner,scores={dpp-06=2}] run time set night
execute as @a[tag=dpp-Owner,scores={dpp-05=0}] run weather clear
execute as @a[tag=dpp-Owner,scores={dpp-05=1}] run weather rain
execute as @a[tag=dpp-Owner,scores={dpp-05=2}] run weather thunder


































