# 再帰するための準備
    execute store result score @s Chuz.Temporary run data get storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.Count

# 再帰スタート
    execute in overworld if score @s Chuz.Temporary matches 1.. run function potion_launcher:item/potion_launcher/eject/recursion
