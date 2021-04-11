tag @s add this
execute at @s run summon item ~ ~1.5 ~ {Tags:[new_indicator],PickupDelay:100,Age:5990,CustomNameVisible:1b,Item:{id:"minecraft:stone_button",Count:1b},Motion:[0.1,0.3,0.05]}
data merge block 0 1 0 {Text1:'{"score":{"name":"@e[tag=this,limit=1]","objective":"damage"},"bold":true,"color":"red"}'}
data modify entity @e[type=item,limit=1,tag=new_indicator] CustomName set from block 0 1 0 Text1
tag @s remove this
tag @e[type=item,tag=new_indicator] remove new_indicator
scoreboard players reset @s damage