execute as @s[scores={damage=10..,damage=..60}] run effect give @s instant_damage 1 0 true
execute as @s[scores={damage=10..,damage=..19}] run effect give @s resistance 1 3 true
execute as @s[scores={damage=10..,damage=..19}] run scoreboard players remove @s damage 10
execute as @s[scores={damage=20..,damage=..29}] run effect give @s resistance 1 2 true
execute as @s[scores={damage=10..,damage=..29}] run scoreboard players remove @s damage 20
execute as @s[scores={damage=30..,damage=..39}] run effect give @s resistance 1 1 true
execute as @s[scores={damage=30..,damage=..39}] run scoreboard players remove @s damage 30
execute as @s[scores={damage=40..,damage=..49}] run effect give @s resistance 1 0 true
execute as @s[scores={damage=40..,damage=..49}] run scoreboard players remove @s damage 40
execute as @s[scores={damage=50..,damage=..59}] run effect give @s resistance 1 0 true
execute as @s[scores={damage=50..,damage=..59}] run scoreboard players remove @s damage 50
execute as @s[scores={damage=60..,damage=..69}] run effect give @s resistance 1 0 true
execute as @s[scores={damage=60..,damage=..69}] run scoreboard players remove @s damage 60
execute as @s[scores={damage=70..}] run effect give @s instant_damage 1 1 true
execute as @s[scores={damage=70..,damage=..79}] run effect give @s resistance 1 1 true
execute as @s[scores={damage=70..,damage=..79}] run scoreboard players remove @s damage 70
execute as @s[scores={damage=80..,damage=..89}] run effect give @s resistance 1 0 true
execute as @s[scores={damage=80..,damage=..89}] run scoreboard players remove @s damage 80
execute as @s[scores={damage=90..}] run scoreboard players reset @s damage
scoreboard players reset @s damage
scoreboard players reset @p[tag=shooter] range
