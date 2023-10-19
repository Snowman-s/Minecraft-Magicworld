execute as @e store result score @s Health run data get entity @s Health

execute as @a store result score @s SelectItemSlot run data get entity @s SelectedItemSlot

execute as @a[predicate=snow_magicworld:has_rod] unless score @s BSelectItemSlot = @s SelectItemSlot at @s run function snow_magicworld:rodutility/reload
execute as @a[predicate=snow_magicworld:sneak,predicate=snow_magicworld:has_rod,predicate=snow_magicworld:has_orb_offhand,tag=!OrbConnect] run function snow_magicworld:rodutility/orb_connect

#魔法世界への召喚酔い
execute as @a[tag=SummoningDrunk] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 glass
execute as @a[tag=SummoningDrunk] at @s run tag @s remove SummoningDrunk

tag @a[predicate=!snow_magicworld:sneak] remove OrbConnect

execute as @a[predicate=snow_magicworld:has_rod,nbt={SelectedItem:{tag:{SnowMagicRod:{SubSlotIDs:["slow_falling"]}}}}] at @s run effect give @s slow_falling 1 1 true

execute as @e[type=item,nbt={Item:{Count:1b, id:"minecraft:egg"}}] unless data entity @s Item.tag.ItemName at @s if block ~ ~ ~ lectern if data block ~ ~ ~ Book run function snow_magicworld:easter_egg
execute as @e[type=item,predicate=snow_magicworld:to_orb_item] unless data entity @s Item.tag.ItemName at @s if block ~ ~ ~ lectern if data block ~ ~ ~ Book run function snow_magicworld:orbutility/change_to_orb

execute as @a[scores={RodUsed=1..},nbt={SelectedItem:{tag:{ItemName:"SnowMagicRod"}}}] unless data entity @s {SelectedItem:{tag:{SnowMagicRod:{MainSlot:""}}}} at @s rotated as @s run function snow_magicworld:laser/check_mana

execute as @a[scores={MaxMana=1..}] run function snow_magicworld:mana/main

execute as @e[tag=snow_laser] at @s rotated as @s run function snow_magicworld:laser/laser_main

#上昇気流
#execute as @a[predicate=snow_magicworld:in_magicdimension, predicate=!snow_magicworld:sneak, predicate=!snow_magicworld:wear_elytra] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air run effect give @s levitation 1 4 false
#execute as @a[predicate=snow_magicworld:in_magicdimension, predicate=!snow_magicworld:wear_elytra] at @s unless block ~ ~-1 ~ air run effect give @s slow_falling 2 5
#execute as @a[predicate=snow_magicworld:in_magicdimension, predicate=!snow_magicworld:wear_elytra] at @s if block ~ ~-1 ~ air unless block ~ ~-2 ~ air run effect give @s slow_falling 2 5
#execute as @a[predicate=snow_magicworld:in_magicdimension, predicate=!snow_magicworld:wear_elytra] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air unless block ~ ~-3 ~ air run effect give @s slow_falling 2 5

#上に行き過ぎ
execute as @a[predicate=snow_magicworld:in_magicdimension,predicate=snow_magicworld:magicworldtp] at @s run effect give @s jump_boost 20 255 true
execute as @a[predicate=snow_magicworld:in_magicdimension,predicate=snow_magicworld:magicworldtp] at @s in minecraft:overworld run tp @s ~ 200 ~

#わら人形に、わら人形に、わら人形に
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:redstone"}}] at @s run function snow_magicworld:explain/check_wara

#上級魔女のパーティクル
execute as @e[tag=snow_better_witch] at @s rotated as @s run function snow_magicworld:entities/better_witch/main

execute as @a run scoreboard players operation @s BSelectItemSlot = @s SelectItemSlot
scoreboard players set @a RodUsed 0
