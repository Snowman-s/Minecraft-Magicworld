execute store result score #laser_id Temporary run scoreboard players get @s EntityID

execute at @e[dx=0,dy=0,dz=0,tag=!snow_laser] if score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID > @s EntityID if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain unless score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID = #laser_id Temporary run function snow_magicworld:laser/onhit
execute at @e[dx=0,dy=0,dz=0,tag=!snow_laser] if score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID < @s EntityID if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain unless score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID = #laser_id Temporary run function snow_magicworld:laser/onhit
execute at @e[dx=0,dy=0,dz=0,tag=!snow_laser,type=!player] if data entity @e[sort=nearest,limit=1,tag=!snow_laser] Brain unless score @e[sort=nearest,limit=1,tag=!snow_laser] PlayerID = #laser_id Temporary run function snow_magicworld:laser/onhit
#execute if score @s LaserType matches 2 as @e[dx=0,dy=0,dz=0,type=!armor_stand] if data entity @s Health unless score @s PlayerID = #laser_id Temporary run function magicrod:ice/hit
#execute if score @s LaserType matches 3 as @e[dx=0,dy=0,dz=0,type=!armor_stand] if data entity @s Health unless score @s PlayerID = #laser_id Temporary run function magicrod:explosion/hit
#execute if score @s LaserType matches 4 as @e[dx=0,dy=0,dz=0,type=!armor_stand] if data entity @s Health unless score @s PlayerID = #laser_id Temporary run function magicrod:dark/hit
