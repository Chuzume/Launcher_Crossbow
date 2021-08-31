
# 空撃ち
    playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 2 1.5
    playsound minecraft:block.wood.break player @a ~ ~ ~ 2 0.9
    scoreboard players reset @s Pot.L_Charge
    
# 再装填
    function potion_launcher:item/potion_launcher/consume