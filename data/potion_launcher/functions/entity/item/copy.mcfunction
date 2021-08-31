
# さっきまで入ってたアイテムをコピーする
    data modify entity @s Item set from storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem
    data modify entity @s Item.Count set from storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.Count
    tag @s remove Pot.L_CopyItem