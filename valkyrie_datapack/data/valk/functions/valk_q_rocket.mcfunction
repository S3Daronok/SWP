execute at @s run particle crit ^ ^ ^ .01 .01 .01 0 1
execute at @s run particle smoke ^ ^ ^-.2 .1 .1 .1 0 10
execute as @s[tag=valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_1,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^.4 ^.2 ~ ~ 
execute as @s[tag=valk_rocket_1,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_1,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_2,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_2,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_3,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_3,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_4,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_4,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_5,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_5,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_6,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_6,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_7,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_7,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_8,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_8,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_9,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_9,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_10,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_10,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_11,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_11,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute as @s[tag=valk_rocket_12,tag=!valk_new_rocket] at @s anchored eyes facing entity @e[tag=valk_target_12,limit=1,sort=nearest] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.2 ~ ~
execute at @s if entity @e[tag=valk_target_locked,distance=..1.5] run function valk:valk_q_explode