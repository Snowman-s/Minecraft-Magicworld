give @s minecraft:carrot_on_a_stick{display:{Name:'{"translate":"魔法の杖(未定)","italic": false,"color": "yellow"}'},Unbreakable:true,ItemName:"SnowMagicRod",SnowMagicRod:{Level:1,SlotNum:1,MainSlot:"",MainSlotId:"",Cost:0, FixedCost:0}} 1

clear @s minecraft:chest 1

advancement revoke @s only snow_magicworld:hidden/first_rod_craft

recipe take @s snow_magicworld:first_rod

