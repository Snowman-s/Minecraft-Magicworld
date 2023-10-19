particle happy_villager ~ ~ ~ .6 .6 .6 1 100

execute if data entity @s Item{id:"minecraft:lapis_lazuli"} run loot spawn ~ ~ ~ loot snow_magicworld:lapis_mainslot_orb
execute if data entity @s Item{id:"minecraft:lapis_lazuli"} run loot spawn ~ ~ ~ loot snow_magicworld:lapis_subslot_orb

execute if data entity @s Item{id:"minecraft:diamond"} run loot spawn ~ ~ ~ loot snow_magicworld:diamond_mainslot_orb
execute if data entity @s Item{id:"minecraft:diamond"} run loot spawn ~ ~ ~ loot snow_magicworld:diamond_subslot_orb

summon item ~ ~ ~ {Tags:["orb_prepare"], Item:{id:"minecraft:lapis_lazuli", Count:1b, tag:{display:{Name:'{"translate":"ホゲのオーブ","italic": false,"color": "aqua"}'}, ItemName:"SnowMagicOrb", MainEffect:"", MainEffectId:"", SubEffect:"", SubEffectId:""}}}

data modify entity @e[tag=orb_prepare,limit=1] Item.id set from entity @s Item.id

execute if data entity @s Item{id:"minecraft:lapis_lazuli"} run data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Name set value '{"translate":"青のオーブ","italic": false,"color": "blue"}'
execute if data entity @s Item{id:"minecraft:diamond"} run data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Name set value '{"translate":"空のオーブ","italic": false,"color": "aqua"}'

data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Lore append value '{"translate":"メインスロット装着時：","color":"yellow","italic": false}'
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.MainEffect set from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbMain"}}},limit=1] Item.tag.MainEffect
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.MainEffectId set from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbMain"}}},limit=1] Item.tag.MainEffectId
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.Cost set from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbMain"}}},limit=1] Item.tag.Cost
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Lore append from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbMain"}}},limit=1] Item.tag.display.Lore[0]
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Lore append from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbMain"}}},limit=1] Item.tag.display.Lore[1]
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Lore append value '{"translate":"サブスロット装着時：","color":"yellow","italic": false}'
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.SubEffect set from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbSub"}}},limit=1] Item.tag.SubEffect
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.SubEffectId set from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbSub"}}},limit=1] Item.tag.SubEffectId
data modify entity @e[tag=orb_prepare,limit=1] Item.tag.display.Lore append from entity @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbSub"}}},limit=1] Item.tag.display.Lore[0]

kill @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbMain"}}}]
kill @e[nbt={Item:{tag:{ItemName:"SnowMagicOrbSub"}}}]

tag @e remove orb_prepare

kill @s
