execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function standard_ability_pack:carrot_on_a_stick
scoreboard players remove @a[scores={scan_cooldown=1..}] scan_cooldown 1
scoreboard players remove @a[scores={amped_cooldown=1..}] amped_cooldown 1
tag @a[tag=amped_weapons,scores={amped_cooldown=..600}] remove amped_weapons

execute as @a[scores={scan_cooldown=540}] run function standard_ability_pack:scan_animation