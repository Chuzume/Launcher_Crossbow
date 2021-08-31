
# 弾丸の種類を判別
    execute if entity @s[type=potion,tag=Pot.L_PotionBullet] run function potion_launcher:entity/splash_potion/main
    execute if entity @s[type=ender_pearl,tag=Pot.L_Pearl] run function potion_launcher:entity/pearl/main