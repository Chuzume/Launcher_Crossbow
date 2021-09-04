# まぁまずはアイテムが必要であろう
    give @s crossbow{ChuzData:{OffhandEvent:true,Ammo:-1,AmmoUse:1,ItemID:Potion_Launcher,RawName:'{"text":"Launcher Crossbow","color":"aqua","italic":false}'},display:{Name:'{"text":"Launcher Crossbow","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[RClick: Shot]","color":"white","italic":false}','{"text":"[Swap: Load Item]","color":"white","italic":false}','{"text":" "}','{"text":"\\"いろんな物を装填して放つことができる！\\"","color":"gray","italic":false}']},CustomModelData:30,HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}]} 1

# 次回以降も実行するためにレシピ没収
    recipe take @s potion_launcher:potion_launcher

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only potion_launcher:craft/potion_launcher