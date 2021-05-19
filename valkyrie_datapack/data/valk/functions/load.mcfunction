say valk's in the pipe 5x5
scoreboard objectives add valk_fuel dummy
scoreboard objectives add carrotOnaStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add fuel_cooldown dummy
scoreboard objectives add rocket_shots dummy
scoreboard objectives add valk_ult dummy
scoreboard objectives add ult_percent dummy
scoreboard objectives add valk_q_cooldown dummy
scoreboard objectives add valk_q_secs dummy
scoreboard objectives add dummy dummy
scoreboard objectives add valkyrie trigger
scoreboard players enable @a valkyrie

bossbar add valk_fuel {"text": "VTOL Jetpack","color":"aqua","bold": true}
bossbar set valk_fuel max 120
bossbar set valk_fuel color blue
bossbar set valk_fuel style notched_6