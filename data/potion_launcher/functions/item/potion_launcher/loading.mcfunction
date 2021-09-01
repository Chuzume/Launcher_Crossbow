
# 今の弾と入れる弾が一緒なら
    execute unless data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem 
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem store success score @s Test run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.id set from storage chuz:context Item.Mainhand.id
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem store success score @s Test2 run data modify storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem.tag set from storage chuz:context Item.Mainhand.tag
    
# Testを計算する
    scoreboard players operation @s Test += @s Test2

# オフハンドに入れると、さっきまでオフハンドに入ってたモノを装填する
# データ取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}

# 給弾
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem if score @s Test matches 0 run function potion_launcher:item/potion_launcher/add

# 入れ替え
    execute if data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem if score @s Test matches 1.. run function potion_launcher:item/potion_launcher/eject

# 最初の一発
    execute unless data storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem run function potion_launcher:item/potion_launcher/first
    tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"Item.Offhand.tag.ChuzData.LoadedItem"}]

# オフハンドとメインハンドが入れ替わる
    #data modify block 100001 0 100000 Items set value []
    #data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    #loot replace entity @s weapon.offhand 1 mine 100001 0 100000 debug_stick
    #data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    #loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# サウンド
    #playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    #playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 2
    #playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 2
    #playsound minecraft:block.piston.extend player @a ~ ~ ~ 2 1.5
    #execute anchored eyes run particle crit ^ ^ ^1 0 0 0 0.5 5

# 表示更新
    function potion_launcher:item/potion_launcher/charge

# リセット
    scoreboard players reset @s Test