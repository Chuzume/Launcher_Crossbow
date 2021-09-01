function potion_launcher:item/potion_launcher/eject_test

#
    tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"Item.Offhand.tag.ChuzData.LoadedItem"}]

## タグ付与
#    tag @s add Chuz_This
#
## 置き換え
#    data modify block 100001 0 100000 Items set value []
#    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem
#    loot spawn 100001 0 100000 mine 100001 0 100000 debug_stick
#    data remove storage chuz:context Item.Offhand.tag.ChuzData.LoadedItem
#
## 呼び出し
#    execute positioned 100001 0 100000 as @e[type=item,sort=nearest,limit=1] run data modify entity @s PickupDelay set value 0
#    execute positioned 100001 0 100000 as @e[type=item,sort=nearest,limit=1] at @p[tag=Chuz_This] run tp @s ~ ~ ~
#
## タグリセット
#    tag @s remove Chuz_This
#
#say yo
