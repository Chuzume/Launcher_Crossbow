
# データ取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem

# リセット
    scoreboard players reset @s Chuz.Temporary

# 入ってる弾に入れる弾を加算
    tellraw @a {"storage":"chuz:context","nbt":"Item.Offhand.tag.ChuzData.LoadedItem.Count"}
    tellraw @a {"storage":"chuz:context","nbt":"Item.Mainhand.Count"}
    execute store result score $Ammo Test run data get storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.Count
    execute store result score $Ammo2 Test run data get storage chuz:context Item.Mainhand.Count
    scoreboard players operation $Ammo Test += $Ammo2 Test

# 置き換え
    tellraw @a {"storage":"chuz:context","nbt":"Item.Mainhand"}
    execute store result storage chuz:context Item.Offhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Test
    execute store result storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.Count byte 1 run scoreboard players get $Ammo Test
    loot replace block 100001 0 100000 container.0 loot potion_launcher:set_ammo_off
    data modify storage chuz:context Item.Offhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    data modify storage chuz:context Item.Offhand.tag.Charged set value 1b
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

    say popo