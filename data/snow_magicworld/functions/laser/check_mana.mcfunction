execute store result score #Cost Temporary run data get entity @s SelectedItem.tag.SnowMagicRod.FixedCost

execute unless score #Cost Temporary <= @s Mana run scoreboard players set #StandBy Temporary 0
execute if score #Cost Temporary <= @s Mana run scoreboard players set #StandBy Temporary 1

execute if score #StandBy Temporary matches 1 run scoreboard players operation @s Mana -= #Cost Temporary
execute if score #StandBy Temporary matches 1 unless predicate snow_magicworld:has_dont_laser_shoot_rod run function snow_magicworld:laser/shoot

execute if score #StandBy Temporary matches 1 if data entity @s SelectedItem.tag.SnowMagicRod{MainSlotId:"worldwalker"} if entity @s[predicate=!snow_magicworld:in_magicdimension] at @s in snow_magicworld:magicdimension run tag @s add SummoningDrunk
execute if score #StandBy Temporary matches 1 if data entity @s SelectedItem.tag.SnowMagicRod{MainSlotId:"worldwalker"} if entity @s[predicate=!snow_magicworld:in_magicdimension] at @s in snow_magicworld:magicdimension run tp @s ~ 255 ~
execute if score #StandBy Temporary matches 1 if data entity @s SelectedItem.tag.SnowMagicRod{MainSlotId:"worldwalker"} if entity @s[predicate=snow_magicworld:in_magicdimension,tag=!SummoningDrunk] at @s run effect give @s jump_boost 30 255 true
execute if score #StandBy Temporary matches 1 if data entity @s SelectedItem.tag.SnowMagicRod{MainSlotId:"worldwalker"} if entity @s[predicate=snow_magicworld:in_magicdimension,tag=!SummoningDrunk] at @s in minecraft:overworld run tp @s ~ 255 ~
