
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# リロード

# タグ削除
    tag @s remove D.Gun_Hold

# 弾を最大に
    scoreboard players set $Ammo Chuz.Temporary 8

# 武器
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Potion_Launcher} run function potion_launcher:item/potion_launcher/main
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} if data storage chuz:context Item.Mainhand run function potion_launcher:item/potion_launcher/loading
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} unless data storage chuz:context Item.Mainhand run function potion_launcher:item/no_offhand

# オフハンドに持てないアイテムが入ったら戻す
    #execute if data storage chuz:context Item.Offhand.tag.ChuzData{NoOffhand:1b} run function potion_launcher:item/no_offhand

# 装弾数制御
    #execute store result score @s D.Gun_Ammo run scoreboard players get $Ammo Chuz.Temporary

# 削除
    #data remove storage chuz:context Item

# やかましいので止める
    stopsound @a[distance=..20] player minecraft:item.armor.equip_generic
