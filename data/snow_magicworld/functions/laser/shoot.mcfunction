advancement grant @s only snow_magicworld:show/first_magic

execute if entity @s[nbt={SelectedItem:{tag:{SnowMagicRod:{SubSlotIDs:["attack_parry"]}}}}] run effect give @s resistance 1 255

execute positioned ~ ~1.3 ~ positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["laser_prepare", "snow_laser"], Small:1b, Silent:1b, Invisible:1b}
data modify entity @e[tag=laser_prepare,limit=1] Rotation set from entity @p Rotation
scoreboard players operation @e[tag=laser_prepare,limit=1] EntityID = @s PlayerID

scoreboard players set @e[tag=laser_prepare] LaserAge 40

function snow_magicworld:laser/copy_data_to_laser

tag @e[tag=laser_prepare] remove laser_prepare
