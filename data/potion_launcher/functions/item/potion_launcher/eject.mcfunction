
# ダミーアイテム召喚、そいつが入ってたアイテムをコピーする
    execute anchored eyes run summon item ^ ^ ^ {Tags:["Pot.L_CopyItem"],PickupDelay:1,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:glass_bottle",Count:1b}}
    execute as @e[type=item,tag=Pot.L_CopyItem,limit=1] run function potion_launcher:entity/item/copy
    data remove storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem