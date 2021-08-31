
# ストレージ
    execute as @a at @s run function potion_launcher:storage

# 飛び道具チェック 
    execute as @e[type=#potion_launcher:projectile,tag=Pot.L_Projectile] at @s run function potion_launcher:entity/projectile_check

# リセット
    scoreboard players reset @a[scores={Pot.L_Shot=0..}] Pot.L_Shot
