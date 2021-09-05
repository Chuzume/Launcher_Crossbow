
# アイテムが戻ってくる
    function potion_launcher:item/potion_launcher/eject/start

# 置き換え
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data remove storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem
    data modify storage chuz:context Item.Offhand.tag.Charged set value 0b
    data modify storage chuz:context Item.Offhand.tag.ChuzData.Ammo set value -1
    data modify storage chuz:context Item.Offhand.tag.display.Name set from storage chuz:context Item.Offhand.tag.ChuzData.RawName
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.offhand 1 mine 100001 0 100000 debug_stick

# 音
    execute at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 1.5
    execute at @s run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 2 1

# リセット
    scoreboard players reset @s Pot.L_Charge
