
# 今の弾と入れる弾が一緒なら
    execute unless data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem 
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem store success score @s Pot.L_Checker run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.id set from storage chuz:context Item.Mainhand.id
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem store success score @s Pot.L_Checker2 run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.tag set from storage chuz:context Item.Mainhand.tag
    
# Pot.L_Checkerを計算する
    scoreboard players operation @s Pot.L_Checker += @s Pot.L_Checker2

# オフハンドに入れると、さっきまでオフハンドに入ってたモノを装填する
# データ取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}

# 給弾
    execute in overworld if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem unless data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem{Count:64b} if score @s Pot.L_Checker matches 0 run function potion_launcher:item/potion_launcher/add

# 入れ替え
    execute in overworld if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem if score @s Pot.L_Checker matches 1.. run function potion_launcher:item/potion_launcher/eject/start

# 最初の一発
    execute in overworld unless data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem run function potion_launcher:item/potion_launcher/first

# マックス
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem{Count:64b} if data storage chuz:context Item.Mainhand in overworld run function potion_launcher:item/potion_launcher/full

# 取得しなおす
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]