# 向き補正
    tp @s ~ ~ ~ ~ ~ 
    
# 弾速と寿命の設定
    execute store result score @s Chuz.Speed run scoreboard players get @p[tag=Chuz_This] Chuz.Speed
    execute store result score @s Pot.L_Life run scoreboard players get @p[tag=Chuz_This] Pot.L_Life

# オーナーコピー
    data modify entity @s Owner set from entity @p[tag=Chuz_This] UUID

# 射出
    function potion_launcher:move

# タグ
    tag @s remove Pot.L_ProjectileInit
    tag @s add Pot.L_Projectile