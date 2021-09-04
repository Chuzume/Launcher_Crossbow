
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# ポーションランチャー オフハンドに持つ操作で装填
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Potion_Launcher} run function potion_launcher:item/potion_launcher/main
    # オフハンドに入れると装填する
        execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} if data storage chuz:context Item.Mainhand unless predicate potion_launcher:sneak run function potion_launcher:item/potion_launcher/loading
    # スニークしてオフハンドに入れると中の弾を取り出す
        execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} in overworld if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem if predicate potion_launcher:sneak run function potion_launcher:item/potion_launcher/eject/empty
    # オフハンドに入った際戻すヤツ
        execute unless score @s Pot.L_Checker matches 1.. if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Potion_Launcher} in overworld run function potion_launcher:item/no_offhand
# 削除
    data remove storage chuz:context Item

# リセット
    scoreboard players reset @s Pot.L_Checker