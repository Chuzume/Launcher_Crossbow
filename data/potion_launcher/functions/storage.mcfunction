
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# ポーションランチャー オフハンドに持つ操作で装填 64発なら入らない
    execute in overworld if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} unless data storage chuz:context Item.Mainhand run function potion_launcher:item/no_offhand
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Potion_Launcher} run function potion_launcher:item/potion_launcher/main
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} if data storage chuz:context Item.Mainhand run function potion_launcher:item/potion_launcher/loading

# 削除
    data remove storage chuz:context Item
