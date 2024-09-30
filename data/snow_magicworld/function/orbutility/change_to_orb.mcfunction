particle happy_villager ~ ~ ~ .6 .6 .6 1 100

execute if data entity @s Item{id:"minecraft:lapis_lazuli"} run loot spawn ~ ~ ~ loot snow_magicworld:lapis_mainslot_orb
execute if data entity @s Item{id:"minecraft:lapis_lazuli"} run loot spawn ~ ~ ~ loot snow_magicworld:lapis_subslot_orb

execute if data entity @s Item{id:"minecraft:diamond"} run loot spawn ~ ~ ~ loot snow_magicworld:diamond_mainslot_orb
execute if data entity @s Item{id:"minecraft:diamond"} run loot spawn ~ ~ ~ loot snow_magicworld:diamond_subslot_orb

summon item ~ ~ ~ {Tags:["orb_prepare"], Item:{id:"minecraft:lapis_lazuli", count:1, components:{"minecraft:custom_name":'{"translate":"ホゲのオーブ","italic": false,"color": "aqua"}', "snow_magicworld:orb":{main_effect_id:"", sub_effect_id:""}}}}

data modify entity @e[tag=orb_prepare,limit=1] Item.id set from entity @s Item.id

execute if data entity @s Item{id:"minecraft:lapis_lazuli"} run data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:custom_name" set value '{"translate":"青のオーブ","italic": false,"color": "blue"}'
execute if data entity @s Item{id:"minecraft:diamond"} run data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:custom_name" set value '{"translate":"空のオーブ","italic": false,"color": "aqua"}'

data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:lore" append value '{"translate":"メインスロット装着時：","color":"yellow","italic": false}'
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:custom_data"."snow_magicworld:orb".main_effect_id set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_main":{}}}}},limit=1] Item.components."minecraft:custom_data"."snow_magicworld:orb_main".id
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:custom_data"."snow_magicworld:orb".cost set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_main":{}}}}},limit=1] Item.components."minecraft:custom_data"."snow_magicworld:orb_main".cost
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:lore" append from entity @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_main":{}}}}},limit=1] Item.components."minecraft:lore"[0]
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:lore" append from entity @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_main":{}}}}},limit=1] Item.components."minecraft:lore"[1]
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:lore" append value '{"translate":"サブスロット装着時：","color":"yellow","italic": false}'
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:custom_data"."snow_magicworld:orb".sub_effect_id set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_sub":{}}}}},limit=1] Item.components."minecraft:custom_data"."snow_magicworld:orb_sub".id
data modify entity @e[tag=orb_prepare,limit=1] Item.components."minecraft:lore" append from entity @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_sub":{}}}}},limit=1] Item.components."minecraft:lore"[0]

kill @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_main":{}}}}},limit=1]
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"snow_magicworld:orb_sub":{}}}}},limit=1]

tag @e remove orb_prepare

kill @s
