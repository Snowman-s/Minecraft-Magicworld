execute store result score #Cost Temporary run data get entity @s SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod".fixed_cost
execute if score @s Mana < #Cost Temporary run return 0

scoreboard players operation @s Mana -= #Cost Temporary
execute unless predicate snow_magicworld:has_dont_laser_shoot_rod run function snow_magicworld:laser/shoot

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{main_slot_id:"worldwalker"}}] if entity @s[predicate=!snow_magicworld:in_magicdimension] at @s in snow_magicworld:magicdimension run tag @s add SummoningDrunk
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{main_slot_id:"worldwalker"}}] if entity @s[predicate=!snow_magicworld:in_magicdimension] at @s in snow_magicworld:magicdimension run tp @s ~ 255 ~

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{main_slot_id:"worldwalker"}}] if entity @s[predicate=snow_magicworld:in_magicdimension,tag=!SummoningDrunk] at @s run effect give @s jump_boost 30 255 true
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{main_slot_id:"worldwalker"}}] if entity @s[predicate=snow_magicworld:in_magicdimension,tag=!SummoningDrunk] at @s in minecraft:overworld run tp @s ~ 255 ~
