scoreboard players set @s Random 0

loot spawn ~ ~ ~ loot snowman_common:random_loot

execute as @e[type=item,nbt={Item:{tag:{SnowmanRandom:"SnowmanRandom"}}}] store result score @s Random run data get entity @s Item.Count

scoreboard players operation @s Random += @e[type=item,nbt={Item:{tag:{SnowmanRandom:"SnowmanRandom"}}}] Random

kill @e[type=item,nbt={Item:{tag:{SnowmanRandom:"SnowmanRandom"}}}]
