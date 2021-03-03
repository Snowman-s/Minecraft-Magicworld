execute store result score #laser_id Temporary run scoreboard players get @s EntityID

execute unless entity @s[tag=better_hit] at @e[dx=0,dy=0,dz=0,tag=!snow_laser,type=player] unless score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID = @s EntityID run function snow_magicworld:laser/onhit
execute unless entity @s[tag=better_hit] if entity @s[tag=!not_hit_witch] at @e[dx=0,dy=0,dz=0,tag=!snow_laser,type=!player] if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain run function snow_magicworld:laser/onhit
execute unless entity @s[tag=better_hit] if entity @s[tag=!not_hit_witch] at @e[dx=0,dy=0,dz=0,tag=!snow_laser,type=!witch,type=!player] if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain run function snow_magicworld:laser/onhit

execute if entity @s[tag=better_hit] at @e[distance=..1.5,tag=!snow_laser,type=player] unless score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID = @s EntityID run function snow_magicworld:laser/onhit
execute if entity @s[tag=better_hit,tag=!not_hit_witch] at @e[distance=..1.5,tag=!snow_laser,type=!player] if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain run function snow_magicworld:laser/onhit
execute if entity @s[tag=better_hit,tag=not_hit_witch] at @e[distance=..1.5,tag=!snow_laser,type=!player,type=!witch] if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain run function snow_magicworld:laser/onhit
