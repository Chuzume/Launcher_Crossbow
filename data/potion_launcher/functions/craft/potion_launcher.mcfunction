# まぁまずはアイテムが必要であろう
    give @s crossbow{ChuzData:{OffhandEvent:true,Ammo:-1,AmmoUse:1,ItemID:Potion_Launcher,RawName:'{"text":"Re: Potion Launcher","color":"aqua","italic":false}'},Charged:1b,display:{Name:'{"text":"Re: Potion Launcher","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick: Shot]","color":"white","italic":false}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ポーション以外も装填できそうだ。\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b} 1

# 次回以降も実行するためにレシピ没収
    recipe take @s potion_launcher:potion_launcher

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only potion_launcher:craft/potion_launcher