
# 入ってる弾に入れる弾を加算
    execute store result score $Ammo Test run data get storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.Count
    scoreboard players set $1 Chuz.Temporary 1
    scoreboard players operation $Ammo Test += $1 Chuz.Temporary

# 置き換え
    execute store result storage chuz:context Item.Mainhand.Count byte 1 run data get storage chuz:context Item.Mainhand.Count 0.99999
    execute store result storage chuz:context Item.Offhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Test
    data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem set from storage chuz:context Item.Mainhand
    execute store result storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.Count byte 1 run scoreboard players get $Ammo Test
    loot replace block 100001 0 100000 container.0 loot potion_launcher:set_ammo_off
    data modify storage chuz:context Item.Offhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    data modify storage chuz:context Item.Offhand.tag.Charged set value 1b
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.offhand 1 mine 100001 0 100000 debug_stick
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# サウンド
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 2
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 2
    playsound minecraft:block.piston.extend player @a ~ ~ ~ 2 1.5
    execute anchored eyes run particle crit ^ ^ ^1 0 0 0 0.5 5