execute positioned ~ ~1.3 ~ run summon armor_stand ~ ~ ~ {Tags:["laser_prepare", "snow_laser"], Small:1b, Silent:1b, Invisible:1b}
data modify entity @e[tag=laser_prepare,limit=1] Rotation set from entity @s Rotation

scoreboard players set @e[tag=laser_prepare] LaserAge 40

tag @e[tag=laser_prepare] add hit_thunder
tag @e[tag=laser_prepare] add not_hit_witch

tag @e[tag=laser_prepare] remove laser_prepare
