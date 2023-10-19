scoreboard objectives add PlayerID dummy
scoreboard objectives add PlayerIDCount dummy
#下はPlayerIDと紐づけする場合に限る
scoreboard objectives add EntityID dummy

scoreboard objectives add PlayingGameID dummy
scoreboard objectives add Constants dummy

scoreboard players set #2 Constants 2
scoreboard players set #3 Constants 3
scoreboard players set #5 Constants 5
scoreboard players set #6 Constants 6
scoreboard players set #10 Constants 10
scoreboard players set #20 Constants 20
scoreboard players set #30 Constants 30
scoreboard players set #60 Constants 60
scoreboard players set #100 Constants 100
scoreboard players set #150 Constants 150
scoreboard players set #200 Constants 200
scoreboard players set #300 Constants 300

scoreboard objectives add Random dummy

scoreboard objectives add RequireAddLevel dummy

scoreboard objectives add Level level

scoreboard objectives add Temporary dummy

scoreboard objectives setdisplay list PlayerID

scoreboard players set @a RequireAddLevel 0
