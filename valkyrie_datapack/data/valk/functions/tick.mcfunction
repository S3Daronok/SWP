execute as @a[tag=valk] run function valk:valk_tick
replaceitem entity @a[tag=redeploy] armor.chest elytra
execute as @a[tag=redeploy] at @s run effect give @s slow_falling 1 1 true
execute as @a[tag=redeploy] at @s unless block ~ ~-4 ~ air run replaceitem entity @s armor.chest air
execute as @a[tag=redeploy] at @s unless block ~ ~-3 ~ air run replaceitem entity @s armor.chest air
execute as @a[tag=redeploy] at @s unless block ~ ~-2 ~ air run replaceitem entity @s armor.chest air
execute as @a[tag=redeploy] at @s unless block ~ ~-1 ~ air run replaceitem entity @s armor.chest air
execute as @a[tag=redeploy] run effect give @s speed 1 1 true
execute as @a[tag=redeploy] at @s unless block ~ ~-.1 ~ air run replaceitem entity @s armor.chest air
execute as @a[tag=redeploy] at @s unless block ~ ~-.1 ~ air run tag @s remove redeploy
execute as @a[tag=redeploy] at @s run particle dust 0.141 0.227 1.000 1 ^ ^-.2 ^-.3 .1 .1 .1 1 50 normal 
execute as @a[scores={valkyrie=1..}] run function valk:get_valkyrie