execute at @s run title @a[distance=..4,tag=!valk_ult_charge] subtitle {"text":"shift to attach"}
execute at @s run title @a[distance=..4,tag=!valk_ult_charge] title {"text":""}
execute at @s as @a[tag=!valk_ult_charge,distance=..4,predicate=valk:sneaking] run function valk:valk_attach
execute at @s positioned as @e[tag=valk_ult_marker,type=armor_stand,limit=1,sort=nearest] run teleport @s ~ ~ ~
execute as @s if predicate valk:sneaking run function valk:valk_ult_fly
execute as @s if predicate valk:sneaking run tag @s remove valk_ult_charge
execute as @s[scores={carrotOnaStick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{valk_ult:1b}}}] run tag @s remove valk_ult_charge
execute as @s[scores={carrotOnaStick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{valk_ult:1b}}}] run scoreboard players reset @s carrotOnaStick