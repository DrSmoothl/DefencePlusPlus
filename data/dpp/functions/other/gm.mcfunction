item replace entity @a container.17 with minecraft:pufferfish{display:{Name:'{"text":"这玩意是菜单","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"放在副手使用","color":"aqua","italic":false}']},Enchantments:[{id:"",lvl:1}],dpp-gm:1s}
tag @a remove dpp-2a
tag @a[nbt={Inventory:[{tag:{dpp-gm:1s},Slot:-106b}]}] add dpp-2a
item replace entity @a[tag=dpp-2a] weapon.offhand with air
execute as @a[tag=dpp-2a,tag=!dpp-bearman] run tellraw @s [{"text":"------------------------------------\n","color":"yellow"},{"text":"                       菜  单\n","color":"aqua"},{"text":"[调节模式]","clickEvent":{"action":"run_command","value":"/trigger dpp-08 set 1"}},{"text":"\n[一键获取pvp装备]","clickEvent":{"action":"run_command","value":"/trigger dpp-08 set 2"}}]
execute as @a[scores={dpp-08=1},tag=!dpp-bearman] run tellraw @s [{"text":"------------------------------------\n","color":"yellow"},{"text":"[创造模式]","clickEvent":{"action":"run_command","value":"/trigger dpp-09 set 0"}},{"text":"  [生存模式]","clickEvent":{"action":"run_command","value":"/trigger dpp-09 set 1"}},{"text":"  [冒险模式]","clickEvent":{"action":"run_command","value":"/trigger dpp-09 set 2"}},{"text":"  [旁观模式(需要白名单)]","clickEvent":{"action":"run_command","value":"/trigger dpp-09 set 3"}}]
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_helmet{Unbreakable:1b}
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_chestplate{Unbreakable:1b}
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_leggings{Unbreakable:1b}
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_boots{Unbreakable:1b}
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:7,UUID:[I;1,1,1,1],Slot:mainhand}]}
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s golden_apple 64
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s oak_planks 64
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s stone 64
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_axe
execute as @a[scores={dpp-08=2},tag=!dpp-bearman] run give @s diamond_pickaxe
scoreboard players set @a dpp-08 0
scoreboard players set @a[tag=dpp-bearman,scores={dpp-14=6..}] dpp-09 2
gamemode creative @a[scores={dpp-09=0},gamemode=!creative]
gamemode survival @a[scores={dpp-09=1},gamemode=!survival]
gamemode adventure @a[scores={dpp-09=2},gamemode=!adventure]
gamemode spectator @a[tag=whitelist,scores={dpp-09=3},gamemode=!spectator]
scoreboard players set @a[gamemode=creative] dpp-09 0
scoreboard players set @a[gamemode=survival] dpp-09 1
scoreboard players set @a[gamemode=adventure] dpp-09 2



