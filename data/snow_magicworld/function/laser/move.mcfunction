tp @s ^ ^ ^.05

particle crit ~ ~ ~ 0 0 0 0 5

#execute if score @s LaserType matches 1 run function magicrod:normal_fire/particle
#execute if score @s LaserType matches 2 run function magicrod:ice/particle
#execute if score @s LaserType matches 3 run function magicrod:explosion/particle
#execute if score @s LaserType matches 4 run function magicrod:dark/particle
