
# Thisタグ付与
    tag @s add Chuz_This

# 目線の高さに召喚
    execute anchored eyes run summon ender_pearl ^ ^ ^ {Fire:2,Tags:["Pot.L_PearlInit","Pot.L_Projectile"]}

# サウンド
    playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 2 2
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 1

# 弾丸のステータス用のスコアを設定する
    scoreboard players set @s Pot.L_Life 2000
    scoreboard players set @s Chuz.Speed 40

# Init処理
    execute as @e[type=ender_pearl,tag=Pot.L_PearlInit] at @s rotated as @p[tag=Chuz_This] run function potion_launcher:entity/pearl/init

# 再装填
    function potion_launcher:item/potion_launcher/consume

# リセット
    scoreboard players reset @s Chuz.Speed
    scoreboard players reset @s Pot.L_Life
    scoreboard players reset @s Pot.L_Charge
    tag @s remove Chuz_This