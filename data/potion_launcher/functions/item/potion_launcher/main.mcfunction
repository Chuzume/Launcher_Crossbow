

# スニークでチャージ
    #scoreboard players add @s[predicate=potion_launcher:sneak] Pot.L_Charge 1 
    #execute if predicate potion_launcher:sneak in overworld run function potion_launcher:item/potion_launcher/eject_main

# チャージ値リセット
    #execute unless predicate potion_launcher:sneak run scoreboard players reset @s Pot.L_Charge

# 弾切れ時
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} in overworld run function potion_launcher:item/potion_launcher/out_of_ammo

# チャージ
    execute if entity @s[scores={Pot.L_Charge=5}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={Pot.L_Charge=5}] run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 1
    execute if entity @s[scores={Pot.L_Charge=10}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={Pot.L_Charge=10}] run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={Pot.L_Charge=15}] run function potion_launcher:item/potion_launcher/loading

# 空撃ち
    execute if entity @s[scores={Pot.L_Shot=0..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem run function potion_launcher:item/potion_launcher/shot/empty

# ポーション
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:potion"} run function potion_launcher:item/potion_launcher/shot/potion

# 残留ポーション
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:lingering_potion"} run function potion_launcher:item/potion_launcher/shot/potion

# スプラッシュポーション
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:splash_potion"} run function potion_launcher:item/potion_launcher/shot/splash_potion

# エンダーパール
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:ender_pearl"} run function potion_launcher:item/potion_launcher/shot/ender_pearl

# 爆薬
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:tnt"} run function potion_launcher:item/potion_launcher/shot/tnt

# コーラスフルーツ
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:popped_chorus_fruit"} run function potion_launcher:item/potion_launcher/shot/shulker

# どうでもいいもの
    #execute if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:potion"} unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:lingering_potion"} unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:splash_potion"} unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:ender_pearl"} unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:tnt"} unless data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:popped_chorus_fruit"} in overworld run function potion_launcher:item/potion_launcher/eject_main
