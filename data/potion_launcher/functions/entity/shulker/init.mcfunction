# 向き補正
    tp @s ~ ~ ~ ~ ~ 
    
# 弾速と寿命の設定
    execute store result score @s Chuz.Speed run scoreboard players get @p[tag=Chuz_This] Chuz.Speed
    execute store result score @s Pot.L_Life run scoreboard players get @p[tag=Chuz_This] Pot.L_Life

# ポーションコピー
    data modify entity @s Item{} set from storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem

# 射出
    function potion_launcher:move

# タグ
    tag @s remove Pot.L_ShulkerInit
    tag @s add Pot.L_Shulker