tellraw @a[tag=eggs] [{"text": "[ ","color": "aqua"},{"text": "D","color": "blue"},{"text": "P","color": "red"},{"text": "P","color":"gold"},{"text": " ]","color": "aqua"},{"text": " 你没有权限使用生物蛋","color": "red","bold": true}]
clear @a[tag=eggs] minecraft:bat_spawn_egg
clear @a[tag=eggs] minecraft:bee_spawn_egg
clear @a[tag=eggs] minecraft:blaze_spawn_egg
clear @a[tag=eggs] minecraft:cave_spider_spawn_egg
clear @a[tag=eggs] minecraft:cat_spawn_egg
clear @a[tag=eggs] minecraft:chicken_spawn_egg
clear @a[tag=eggs] minecraft:cod_spawn_egg
clear @a[tag=eggs] minecraft:cow_spawn_egg
clear @a[tag=eggs] minecraft:creeper_spawn_egg
clear @a[tag=eggs] minecraft:dolphin_spawn_egg
clear @a[tag=eggs] minecraft:donkey_spawn_egg
clear @a[tag=eggs] minecraft:drowned_spawn_egg
clear @a[tag=eggs] minecraft:elder_guardian_spawn_egg
clear @a[tag=eggs] minecraft:enderman_spawn_egg
clear @a[tag=eggs] minecraft:endermite_spawn_egg
clear @a[tag=eggs] minecraft:evoker_spawn_egg
clear @a[tag=eggs] minecraft:fox_spawn_egg
clear @a[tag=eggs] minecraft:ghast_spawn_egg
clear @a[tag=eggs] minecraft:guardian_spawn_egg
clear @a[tag=eggs] minecraft:hoglin_spawn_egg
clear @a[tag=eggs] minecraft:horse_spawn_egg
clear @a[tag=eggs] minecraft:husk_spawn_egg
clear @a[tag=eggs] minecraft:llama_spawn_egg
clear @a[tag=eggs] minecraft:magma_cube_spawn_egg
clear @a[tag=eggs] minecraft:mooshroom_spawn_egg
clear @a[tag=eggs] minecraft:mule_spawn_egg
clear @a[tag=eggs] minecraft:panda_spawn_egg
clear @a[tag=eggs] minecraft:parrot_spawn_egg
clear @a[tag=eggs] minecraft:panda_spawn_egg
clear @a[tag=eggs] minecraft:phantom_spawn_egg
clear @a[tag=eggs] minecraft:pig_spawn_egg
clear @a[tag=eggs] minecraft:piglin_spawn_egg
clear @a[tag=eggs] minecraft:piglin_brute_spawn_egg
clear @a[tag=eggs] minecraft:polar_bear_spawn_egg
clear @a[tag=eggs] minecraft:pufferfish_spawn_egg
clear @a[tag=eggs] minecraft:rabbit_spawn_egg
clear @a[tag=eggs] minecraft:ravager_spawn_egg
clear @a[tag=eggs] minecraft:salmon_spawn_egg
clear @a[tag=eggs] minecraft:sheep_spawn_egg
clear @a[tag=eggs] minecraft:shulker_spawn_egg
clear @a[tag=eggs] minecraft:silverfish_spawn_egg
clear @a[tag=eggs] minecraft:skeleton_spawn_egg
clear @a[tag=eggs] minecraft:skeleton_horse_spawn_egg
clear @a[tag=eggs] minecraft:slime_spawn_egg
clear @a[tag=eggs] minecraft:spider_spawn_egg
clear @a[tag=eggs] minecraft:squid_spawn_egg
clear @a[tag=eggs] minecraft:stray_spawn_egg
clear @a[tag=eggs] minecraft:strider_spawn_egg
clear @a[tag=eggs] minecraft:trader_llama_spawn_egg
clear @a[tag=eggs] minecraft:tropical_fish_spawn_egg
clear @a[tag=eggs] minecraft:turtle_spawn_egg
clear @a[tag=eggs] minecraft:vex_spawn_egg
clear @a[tag=eggs] minecraft:villager_spawn_egg
clear @a[tag=eggs] minecraft:vindicator_spawn_egg
clear @a[tag=eggs] minecraft:wandering_trader_spawn_egg
clear @a[tag=eggs] minecraft:witch_spawn_egg
clear @a[tag=eggs] minecraft:wither_skeleton_spawn_egg
clear @a[tag=eggs] minecraft:wolf_spawn_egg
clear @a[tag=eggs] minecraft:zombie_spawn_egg
clear @a[tag=eggs] minecraft:zombie_horse_spawn_egg
clear @a[tag=eggs] minecraft:zombie_villager_spawn_egg
clear @a[tag=eggs] minecraft:zombified_piglin_spawn_egg
execute at @s run kill @e[type=item,distance=..10]
tag @a[tag=eggs] remove eggs