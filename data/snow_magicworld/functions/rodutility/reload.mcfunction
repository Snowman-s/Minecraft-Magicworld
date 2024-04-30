execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{level:1b}}] run item modify entity @s weapon.mainhand snow_magicworld:1_rod
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{level:2b}}] run item modify entity @s weapon.mainhand snow_magicworld:2_rod
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{level:3b}}] run item modify entity @s weapon.mainhand snow_magicworld:3_rod
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{level:4b}}] run item modify entity @s weapon.mainhand snow_magicworld:4_rod
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{level:5b}}] run item modify entity @s weapon.mainhand snow_magicworld:5_rod

item modify entity @s weapon.mainhand snow_magicworld:clear_lore

data modify storage snow_magicworld:temp RodData set from entity @s SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod"
data modify storage snow_magicworld:temp OrbName set from storage snow_magicworld:temp RodData.main_slot

execute store result score #RodCost Temporary run data get storage snow_magicworld:temp RodData.cost 1
execute if data storage snow_magicworld:temp RodData{sub_slot_ids:["decrease_cost"]} run scoreboard players remove #RodCost Temporary 1
execute if data storage snow_magicworld:temp RodData{sub_slot_ids:["decrease_cost2"]} run scoreboard players remove #RodCost Temporary 2
execute if score #RodCost Temporary matches ..0 run scoreboard players set #RodCost Temporary 1
execute store result storage snow_magicworld:temp FixedCost int 1 run scoreboard players get #RodCost Temporary
execute store result storage snow_magicworld:temp Cost int 1 run data get storage snow_magicworld:temp RodData.cost 1

item modify entity @s weapon.mainhand snow_magicworld:set_cost
item modify entity @s weapon.mainhand snow_magicworld:cost_lore

function snow_magicworld:rodutility/add_orb_to_lore

execute store result score #SubSlotNum Temporary run data get storage snow_magicworld:temp RodData.slot_num
scoreboard players remove #SubSlotNum Temporary 1

execute if score #SubSlotNum Temporary matches 1.. run data modify storage snow_magicworld:temp OrbName set value ""
execute if score #SubSlotNum Temporary matches 1.. run data modify storage snow_magicworld:temp OrbName set from storage snow_magicworld:temp RodData.sub_slots[0]
execute if score #SubSlotNum Temporary matches 1.. run function snow_magicworld:rodutility/add_orb_to_lore

execute if score #SubSlotNum Temporary matches 2.. run data modify storage snow_magicworld:temp OrbName set value ""
execute if score #SubSlotNum Temporary matches 2.. run data modify storage snow_magicworld:temp OrbName set from storage snow_magicworld:temp RodData.sub_slots[1]
execute if score #SubSlotNum Temporary matches 2.. run function snow_magicworld:rodutility/add_orb_to_lore
