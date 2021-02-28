execute unless entity @s[predicate=snow_magicworld:has_rod] if score @s MaxMana > @s Mana run scoreboard players add @s ManaTime 1
execute if entity @s[predicate=snow_magicworld:has_rod] unless data entity @s SelectedItem.tag.SnowMagicRod{SubSlotIDs:["accel_mana"]} if score @s MaxMana > @s Mana run scoreboard players add @s ManaTime 1
execute if entity @s[predicate=snow_magicworld:has_rod] if data entity @s SelectedItem.tag.SnowMagicRod{SubSlotIDs:["accel_mana"]} if score @s MaxMana > @s Mana run scoreboard players add @s ManaTime 2

execute if score @s ManaTime >= @s ManaSpeed run scoreboard players add @s Mana 1
execute if score @s ManaTime >= @s ManaSpeed run scoreboard players operation @s ManaTime -= @s ManaSpeed

title @s[predicate=snow_magicworld:has_rod] actionbar [{"text":"","color":"white"},{"score":{"name": "@s","objective": "ManaTime"},"color": "gray"},"/",{"score":{"name": "@s","objective": "ManaSpeed"},"color": "gray"}," -> ",{"score":{"name": "@s","objective": "Mana"},"color": "green"},"/",{"score":{"name": "@s","objective": "MaxMana"},"color": "green"}]
