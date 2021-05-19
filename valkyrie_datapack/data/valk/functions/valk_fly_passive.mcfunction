scoreboard players remove @s[tag=OnGround] valk_fuel 19
execute at @s[tag=OnGround] if block ^ ^.5 ^1 air run tp @s ^ ^.5 ^1
scoreboard players remove @s valk_fuel 1
effect give @s levitation 1 3 true
execute at @s anchored feet run particle soul_fire_flame ^-.2 ^-.2 ^-.8 0 0 0 0 20
execute at @s anchored feet run particle soul_fire_flame ^ ^-.2 ^-.8 0 0 0 0 20
execute at @s anchored feet run particle soul_fire_flame ^.2 ^-.2 ^-.8 0 0 0 0 20
tag @s add valk_fly_passive
scoreboard players set @s fuel_cooldown 80