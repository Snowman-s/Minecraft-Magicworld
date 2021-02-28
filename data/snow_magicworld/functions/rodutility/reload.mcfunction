execute if data entity @s {SelectedItem:{tag:{SnowMagicRod:{Level:1}}}} run item entity @s weapon.mainhand modify snow_magicworld:1_rod
execute if data entity @s {SelectedItem:{tag:{SnowMagicRod:{Level:2}}}} run item entity @s weapon.mainhand modify snow_magicworld:2_rod
execute if data entity @s {SelectedItem:{tag:{SnowMagicRod:{Level:3}}}} run item entity @s weapon.mainhand modify snow_magicworld:3_rod
execute if data entity @s {SelectedItem:{tag:{SnowMagicRod:{Level:4}}}} run item entity @s weapon.mainhand modify snow_magicworld:4_rod
execute if data entity @s {SelectedItem:{tag:{SnowMagicRod:{Level:5}}}} run item entity @s weapon.mainhand modify snow_magicworld:5_rod

item entity @s weapon.mainhand modify snow_magicworld:clear_lore

data modify storage snow_magicworld:temp OrbName set from entity @s SelectedItem.tag.SnowMagicRod.MainSlot

execute store result score #RodCost Temporary run data get entity @s SelectedItem.tag.SnowMagicRod.Cost
execute if data entity @s SelectedItem.tag.SnowMagicRod{SubSlotIDs:["decrease_cost2"]} run scoreboard players remove #RodCost Temporary 2
execute if data entity @s SelectedItem.tag.SnowMagicRod{SubSlotIDs:["decrease_cost"]} run scoreboard players remove #RodCost Temporary 1
execute if score #RodCost Temporary matches ..0 run scoreboard players set #RodCost Temporary 1
execute store result storage snow_magicworld:temp FixedCost int 1 run scoreboard players get #RodCost Temporary
execute store result storage snow_magicworld:temp Cost int 1 run data get entity @s SelectedItem.tag.SnowMagicRod.Cost

item entity @s weapon.mainhand modify snow_magicworld:set_cost
item entity @s weapon.mainhand modify snow_magicworld:cost_lore

function snow_magicworld:rodutility/add_orb_to_lore

execute store result score #SubSlotNum Temporary run data get entity @s SelectedItem.tag.SnowMagicRod.SlotNum
scoreboard players remove #SubSlotNum Temporary 1

execute if score #SubSlotNum Temporary matches 1.. run data modify storage snow_magicworld:temp OrbName set value ""
execute if score #SubSlotNum Temporary matches 1.. run data modify storage snow_magicworld:temp OrbName set from entity @s SelectedItem.tag.SnowMagicRod.SubSlots[0]
execute if score #SubSlotNum Temporary matches 1.. run function snow_magicworld:rodutility/add_orb_to_lore

execute if score #SubSlotNum Temporary matches 2.. run data modify storage snow_magicworld:temp OrbName set value ""
execute if score #SubSlotNum Temporary matches 2.. run data modify storage snow_magicworld:temp OrbName set from entity @s SelectedItem.tag.SnowMagicRod.SubSlots[1]
execute if score #SubSlotNum Temporary matches 2.. run function snow_magicworld:rodutility/add_orb_to_lore
