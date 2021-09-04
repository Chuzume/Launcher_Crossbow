
# 現状はオフハンドに入れると戻ってくる
    data remove storage chuz:context Item
    data modify storage chuz:context Item.Mainhand merge from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand mine 100001 0 100000 debug_stick
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    execute if data storage chuz:context Item.Mainhand run loot replace entity @s weapon.offhand mine 100001 0 100000 debug_stick

# 取得しなおす
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
