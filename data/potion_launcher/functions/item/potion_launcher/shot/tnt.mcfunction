
# Thisタグ付与
    tag @s add Chuz_This

# 目線の高さに召喚
    execute anchored eyes run summon tnt ^ ^ ^ {Fire:2,Tags:["Pot.L_TNTInit","Pot.L_Projectile"],Fuse:30}

# サウンド
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 1
    playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.7

# 弾丸のステータス用のスコアを設定する
    scoreboard players set @s Pot.L_Life 2000
    scoreboard players set @s Chuz.Speed 20

# Init処理
    execute as @e[type=tnt,tag=Pot.L_TNTInit] at @s rotated as @p[tag=Chuz_This] run function potion_launcher:entity/tnt/init

# 再装填
    function potion_launcher:item/potion_launcher/consume

# リセット
    scoreboard players reset @s Chuz.Speed
    scoreboard players reset @s Pot.L_Life
    scoreboard players reset @s Pot.L_Charge
    tag @s remove Chuz_This