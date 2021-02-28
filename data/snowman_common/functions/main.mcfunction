#プレイヤーID
execute if entity @a[tag=!HasID,limit=1] run scoreboard players add #dummy PlayerIDCount 1
execute as @a[tag=!HasID,limit=1] run scoreboard players operation @s PlayerID = #dummy PlayerIDCount
tag @a[tag=!HasID,limit=1,scores={PlayerID=0..}] add HasID

execute as @a[scores={RequireAddLevel=1..}] run xp add @s 1 points
execute as @a[scores={RequireAddLevel=1..}] run scoreboard players remove @s RequireAddLevel 1
execute as @a[scores={RequireAddLevel=..-1}] run xp add @s -1 points
execute as @a[scores={RequireAddLevel=..-1}] run scoreboard players add @s RequireAddLevel 1