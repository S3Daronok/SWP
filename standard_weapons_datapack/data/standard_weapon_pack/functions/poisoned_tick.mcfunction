scoreboard players remove @s poisoned 1
scoreboard players remove @s poisoned_tick 1

execute as @s[scores={poisoned_tick=0}] run execute store result score @s health run data get entity @s Health
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 100.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 100.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 200.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 200.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 300.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 300.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 400.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 400.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 500.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 500.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 600.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 600.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 700.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 700.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 800.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 800.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 900.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 900.. run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 1000.. run scoreboard players remove @s health 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 1000.. run scoreboard players add @s damage 1

execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 100.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 200.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 300.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 400.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 500.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 600.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 700.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 800.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 900.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] if score @s poisoned matches 1000.. run scoreboard players remove @s poisoned 1
execute as @s[scores={poisoned_tick=0}] run scoreboard players add @s damage 1
execute as @s[scores={poisoned_tick=0}] run function standard_weapon_pack:damage_indicator
execute as @s[scores={poisoned_tick=0}] store result entity @s Health float 1 run scoreboard players remove @s health 1

execute as @s[scores={poisoned_tick=0}] run scoreboard players set @s poisoned_tick 20
execute if score @s poisoned matches 0 run scoreboard players reset @s poisoned_tick
execute if score @s poisoned matches 0 run scoreboard players reset @s poisoned

execute at @s run particle entity_effect ~ ~0.5 ~ 0.055 0.451 0.094 1 0