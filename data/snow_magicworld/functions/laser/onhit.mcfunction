execute if entity @s[tag=hit_fire] run setblock ~ ~ ~ fire

execute if entity @s[tag=hit_explosion] run summon tnt ~ ~ ~ {Fuse:0}
execute if entity @s[tag=hit_explosion] if entity @e[sort=nearest,limit=1,type=chicken] run give @p[advancements={snow_magicworld:show/easter_egg=false},distance=..20] egg{display:{Name:'{"translate":"卵？", "italic": false}'}}

execute if entity @s[tag=hit_pig] run function snowman_common:get_random
execute if entity @s[tag=hit_pig] run scoreboard players operation @s Random /= #5 Constants
execute if entity @s[tag=hit_pig] if score @e[tag=!snow_laser,sort=nearest,limit=1,type=!pig,scores={Health=1..}] Health <= @s Random run summon pig ~ ~ ~
execute if entity @s[tag=hit_pig] if score @e[tag=!snow_laser,sort=nearest,limit=1,type=!pig,scores={Health=1..}] Health <= @s Random run kill @e[dx=0,dy=0,dz=0,tag=!snow_laser,limit=1,sort=nearest,type=!pig,scores={Health=1..}]

execute if entity @s[tag=hit_heal] run summon area_effect_cloud ~ ~ ~ {Radius:1, Effects:[{Amplifier:1, Id:6, Duration:60}], Duration:10}

execute if entity @s[tag=hit_water] run setblock ~ ~ ~ water

execute if entity @s[tag=hit_lava] run setblock ~ ~ ~ lava

execute if entity @s[tag=wither] run summon area_effect_cloud ~ ~ ~ {Radius:3, Effects:[{Amplifier:0, Id:20, Duration:90}], Duration:40}

execute if entity @s[tag=hit_thunder] run summon minecraft:lightning_bolt ~ ~ ~

kill @s
