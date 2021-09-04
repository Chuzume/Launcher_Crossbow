# パーティクル
    particle crit ~ ~ ~ 0 0 0 0 2 force

# 時間経過で消える
    scoreboard players add @s Pot.L_Time 1
    execute if score @s Pot.L_Time >= @s Pot.L_Life run kill @s