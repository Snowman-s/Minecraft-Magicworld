#前方がブロックならkill(安定版)
execute unless block ^ ^ ^1 #snow_magicworld:laser_penetrating if data entity @s {Tags:["active_onground"]} run function snow_magicworld:laser/onhit
execute unless block ^ ^ ^1 #snow_magicworld:laser_penetrating run kill @s

#一定時間経過したならkill
scoreboard players remove @s LaserAge 1
kill @s[scores={LaserAge=..0}]

function snow_magicworld:laser/moves
function snow_magicworld:laser/check_hit
