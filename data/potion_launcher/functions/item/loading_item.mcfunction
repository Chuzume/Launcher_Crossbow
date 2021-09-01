
# データ取得
    data modify storage chuz:context Item set from entity @s SelectedItem

# リセット
    scoreboard players reset @s Chuz.Temporary

# 減算
    execute store result score $AmmoUse Chuz.Temporary run data get entity @s SelectedItem.tag.ChuzData.AmmoUse
    scoreboard players operation $Ammo Chuz.Temporary -= $AmmoUse Chuz.Temporary

# 置き換え
    execute store result storage chuz:context Item.Mainhand.Count byte 1 run data get storage chuz:context Item.Mainhand.Count 0.99999
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick