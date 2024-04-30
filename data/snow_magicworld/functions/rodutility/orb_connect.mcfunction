tag @s remove OrbConnected1
tag @s remove OrbConnected2

tag @s remove OrbConnectedMain
execute store result score #SubSlotNum Temporary run data get entity @s SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod".slot_num
scoreboard players remove #SubSlotNum Temporary 1

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{main_slot_id:""}}] run tag @s add OrbConnectedMain
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"snow_magicworld:magic_rod":{main_slot_id:""}}] run item modify entity @s weapon.mainhand snow_magicworld:copy_orb/main

execute if score #SubSlotNum Temporary matches 1.. unless data entity @s[tag=!OrbConnectedMain] SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod".sub_slot_ids[0] run tag @s add OrbConnected1
execute if score #SubSlotNum Temporary matches 1.. unless data entity @s[tag=!OrbConnectedMain] SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod".sub_slot_ids[0] run item modify entity @s weapon.mainhand snow_magicworld:copy_orb/sub

execute if score #SubSlotNum Temporary matches 2.. unless data entity @s[tag=!OrbConnectedMain,tag=!OrbConnected1] SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod".sub_slot_ids[1] run tag @s add OrbConnected2
execute if score #SubSlotNum Temporary matches 2.. unless data entity @s[tag=!OrbConnectedMain,tag=!OrbConnected1] SelectedItem.components."minecraft:custom_data"."snow_magicworld:magic_rod".sub_slot_ids[1] run item modify entity @s weapon.mainhand snow_magicworld:copy_orb/sub

execute unless entity @s[tag=!OrbConnectedMain,tag=!OrbConnected1,tag=!OrbConnected2] run item modify entity @s weapon.offhand snow_magicworld:minus_count

#このスニーク中には既にオーブはくっつけられていて、さらにオーブをくっつけてはならない
tag @s add OrbConnect

execute unless entity @s[tag=!OrbConnected1,tag=!OrbConnected2] run advancement grant @s only snow_magicworld:show/orb_connect_sub
execute if entity @s[tag=OrbConnectedMain] run advancement grant @s only snow_magicworld:show/orb_connect

function snow_magicworld:rodutility/reload
