effect clear @a instant_damage
effect clear @a resistance
execute as @a[scores={carrotOnaStick=1}] run function standard_weapon_pack:carrot_on_a_stick
execute as @a[scores={drop_carrotStick=1}] run function standard_weapon_pack:carrot_on_a_stick_drop
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function standard_weapon_pack:carrot_on_a_stick
execute as @e[scores={weapon_mode=0}] run effect clear @s slowness
execute as @e[scores={poison_ammo=0}] if score @s poisoned matches 1.. run function standard_weapon_pack:poisoned_tick
scoreboard players reset @a tick

execute as @a[scores={customizer=1..}] run schedule function standard_weapon_pack:customizer/customizer_settings 1t
execute as @a[scores={customizer=1..}] run tag @s add customizing
kill @e[type=arrow,nbt={inGround:1b}]