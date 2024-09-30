particle soul_fire_flame ~ ~1 ~ 0 0 0 .1 1

scoreboard players add @s EntityFrame 1

execute if score @s EntityFrame matches 150.. if entity @a[distance=1..10,gamemode=!creative,gamemode=!spectator] run function snow_magicworld:entities/better_witch/shoot

execute if score @s EntityFrame matches 150.. run scoreboard players set @s EntityFrame 0
