give @s minecraft:carrot_on_a_stick{display:{Name:'{"translate":"魔法の杖(未定)","italic": false,"color": "yellow"}'}, Unbreakable:true, ItemName:"SnowMagicRod", SnowMagicRod:{Level:2, SlotNum:2, MainSlot:"", MainSlotId:"", SubSlots:[], SubSlotIDs:[], Cost:0, FixedCost:0}} 1

clear @s minecraft:chest 1

advancement revoke @s only snow_magicworld:hidden/second_rod_craft

recipe take @s snow_magicworld:second_rod
