effect give @s levitation 1000 255 true
execute at @s run tp @s ^ ^1.5 ^
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["valk_ult_marker"]}
execute at @s run tp @e[type=armor_stand,limit=1,sort=nearest] ^ ^ ^ ~ ~
tag @s add valk_ult_charge
scoreboard players reset @s carrotOnaStick