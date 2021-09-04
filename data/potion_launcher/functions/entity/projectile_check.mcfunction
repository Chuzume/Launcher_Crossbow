
# 弾丸の種類を判別
    execute if entity @s[type=potion,tag=Pot.L_PotionBullet] run function potion_launcher:entity/splash_potion/main

# パーティクル
    particle crit ~ ~ ~ 0 0 0 0 2 force

# 時間経過で消える
    scoreboard players add @s Pot.L_Time 1
    execute if score @s Pot.L_Time >= @s Pot.L_Life run kill @s