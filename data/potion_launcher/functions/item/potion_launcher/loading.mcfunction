
# 今の弾と入れる弾が一緒なら
    tellraw @a {"storage":"chuz:context","nbt":"Item.Offhand.tag.ChuzData.LoadedItem"}
    tellraw @a {"storage":"chuz:context","nbt":"Item.Mainhand"}
    #execute store success storage chuz:context Reload int 1 run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem set from storage chuz:context Item.Mainhand
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem store success score @s Test run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.id set from storage chuz:context Item.Mainhand.id
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem store success score @s Test2 run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.tag set from storage chuz:context Item.Mainhand.tag

# オフハンドに入れると、さっきまでオフハンドに入ってたモノを装填する
# データ取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}

# 給弾
    execute if score @s Test matches 0.. if score @s Test2 matches 0.. run function potion_launcher:item/potion_launcher/add

# 入れ替え
    execute if score @s Test matches 1.. if score @s Test2 matches 1.. run function potion_launcher:item/potion_launcher/eject
    
#if data storage chuz:context {Reload:0}

# アイテムがメインハンドに戻ってくる
    execute unless data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem set from storage chuz:context Item.Mainhand
    data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem[-1] append from storage chuz:context Item.Mainhand
    data modify storage chuz:context Item.Offhand.tag.Charged set value 1b
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand mine 100001 0 100000 debug_stick
    item replace entity @s weapon.offhand with air

# サウンド
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 2
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 2
    playsound minecraft:block.piston.extend player @a ~ ~ ~ 2 1.5
    execute anchored eyes run particle crit ^ ^ ^1 0 0 0 0.5 5
    function potion_launcher:item/potion_launcher/charge

scoreboard players reset @s Test