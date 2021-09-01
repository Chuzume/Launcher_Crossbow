
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# ポーションランチャー オフハンドに持つ操作で装填
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Potion_Launcher} run function potion_launcher:item/potion_launcher/main
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} if data storage chuz:context Item.Mainhand run function potion_launcher:item/potion_launcher/loading
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} unless data storage chuz:context Item.Mainhand run function potion_launcher:item/no_offhand

# 削除
    data remove storage chuz:context Item
