

# スニークでチャージ
    #scoreboard players add @s[predicate=potion_launcher:sneak] Pot.L_Charge 1 

# チャージ値リセット
    #execute unless predicate potion_launcher:sneak run scoreboard players reset @s Pot.L_Charge

    #tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"Item.Offhand.tag.ChuzData.LoadedItem"}]

# 弾切れ時
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function potion_launcher:item/potion_launcher/out_of_ammo

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

# 爆薬
    execute if entity @s[scores={Pot.L_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem{id:"minecraft:popped_chorus_fruit"} run function potion_launcher:item/potion_launcher/shot/shulker

#scoreboard players add @e[tag=ItemBullet] BulletRemain 1
#kill @e[tag=ItemBullet,scores={BulletRemain=300..}] 
##空撃ち
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt=!{Inventory:[{Slot:-106b}]},scores={Used_PotLauncher=1..}] run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1.5
##ポーション
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","ItemBullet","PotBullet1","Potion_Copy"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","ItemBullet","PotBullet2","Potion_Copy"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","ItemBullet","PotBullet3","Potion_Copy"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.bottle.fill player @a ~ ~ ~ 2 1.5
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 0
#
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","SP_PotionBullet","ItemBullet","PotBullet1","Potion_Copy"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","SP_PotionBullet","ItemBullet","PotBullet2","Potion_Copy"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","SP_PotionBullet","ItemBullet","PotBullet3","Potion_Copy"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.bottle.fill player @a ~ ~ ~ 2 2
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 1
#
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","SP_PotionBullet","ItemBullet","PotBullet1","Potion_Copy"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","SP_PotionBullet","ItemBullet","PotBullet2","Potion_Copy"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]},scores={Used_PotLauncher=1..}] run summon potion ~ ~1.67 ~ {Tags:["PotionBullet","SP_PotionBullet","ItemBullet","PotBullet3","Potion_Copy"],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water"}}}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.bottle.fill player @a ~ ~ ~ 2 2
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 1
#
##火の玉
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={Used_PotLauncher=1..}] run summon fireball ~ ~1.65 ~ {ExplosionPower:1,direction:[0.0,0.0,0.0],power:[0.0,-0.051,0.0],Tags:["FireBullet","ItemBullet","FireBullet1"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={Used_PotLauncher=1..}] run summon fireball ~ ~1.65 ~ {ExplosionPower:1,direction:[0.0,0.0,0.0],power:[0.0,-0.051,0.0],Tags:["FireBullet","ItemBullet","FireBullet2"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={Used_PotLauncher=1..}] run summon fireball ~ ~1.65 ~ {ExplosionPower:1,direction:[0.0,0.0,0.0],power:[0.0,-0.051,0.0],Tags:["FireBullet","ItemBullet","FireBullet3"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 1
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.7
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={Used_PotLauncher=1..}] run clear @s fire_charge 1
#
##TNT
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={Used_PotLauncher=1..}] run summon tnt ~ ~1.58 ~ {Fuse:30s,Tags:["TNTBullet","ItemBullet",TNTBullet1]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={Used_PotLauncher=1..}] run summon tnt ~ ~1.58 ~ {Fuse:30s,Tags:["TNTBullet","ItemBullet",TNTBullet2]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={Used_PotLauncher=1..}] run summon tnt ~ ~1.58 ~ {Fuse:30s,Tags:["TNTBullet","ItemBullet",TNTBullet3]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 1
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.7
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={Used_PotLauncher=1..}] run clear @s tnt 1
#
##焼きコーラスフルーツ
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:popped_chorus_fruit"}]},scores={Used_PotLauncher=1..}] run summon shulker_bullet ~ ~1.67 ~ {Fuse:30s,Tags:["ShulBullet","ShulBullet1","ItemBullet"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:popped_chorus_fruit"}]},scores={Used_PotLauncher=1..}] run summon shulker_bullet ~ ~1.67 ~ {Fuse:30s,Tags:["ShulBullet","ShulBullet2","ItemBullet"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b,PotBowLevel:2b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:popped_chorus_fruit"}]},scores={Used_PotLauncher=1..}] run summon shulker_bullet ~ ~1.67 ~ {Fuse:30s,Tags:["ShulBullet","ShulBullet3","ItemBullet"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:popped_chorus_fruit"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:popped_chorus_fruit"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.7
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:popped_chorus_fruit"}]},scores={Used_PotLauncher=1..}] run clear @s popped_chorus_fruit 1
#
##金床
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:anvil"}]},scores={Used_PotLauncher=1..}] run summon falling_block ~ ~0.5 ~ {BlockState:{Name:"minecraft:anvil"},NoGravity:1b,Time:1,HurtEntities:1b,FallHurtMax:40,FallHurtAmount:2f,Tags:["ItemBullet","AnvilBullet"]}
#execute at @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:anvil"}]},scores={Used_PotLauncher=1..}] run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.7
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:anvil"}]},scores={Used_PotLauncher=1..}] run clear @s anvil 1
#
##ポーション
#execute as @e[tag=PotBullet1,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~ ~ 
#execute as @e[tag=PotBullet2,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~10 ~ 
#execute as @e[tag=PotBullet3,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~-10 ~ 
#
#execute as @e[tag=PotionBullet,tag=Potion_Copy] at @s run data modify entity @s Potion.tag.Potion set from entity @p Inventory[{Slot:-106b}].tag.Potion
#execute as @e[tag=PotionBullet,tag=Potion_Copy] at @s run data modify entity @s Potion.tag.CustomPotionEffects set from entity @p Inventory[{Slot:-106b}].tag.CustomPotionEffects
#execute as @e[tag=PotionBullet,tag=Potion_Copy] at @s run data modify entity @s Potion.tag.CustomPotionColor set from entity @p Inventory[{Slot:-106b}].tag.CustomPotionColor
#execute at @e[tag=PotionBullet,scores={BulletRemain=1}] run summon area_effect_cloud ^ ^ ^0.35 {Duration:1,Radius:0f,Tags:[pos]}
#execute at @e[tag=SP_PotionBullet,scores={BulletRemain=1}] run summon area_effect_cloud ^ ^ ^0.7 {Duration:1,Radius:0f,Tags:[pos]}
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]},scores={Used_PotLauncher=1..}] run replaceitem entity @s weapon.offhand air
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]},scores={Used_PotLauncher=1..}] run replaceitem entity @s weapon.offhand air
#execute as @a[nbt={SelectedItem:{tag:{PotionLauncher:1b}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]},scores={Used_PotLauncher=1..}] run replaceitem entity @s weapon.offhand air
#
#tag @e[tag=Potion_Copy] remove Potion_Copy
#
##弾丸
#execute as @e[tag=PearlBullet,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~ ~ 
#execute at @e[tag=PearlBullet] run particle minecraft:crit ~ ~ ~ 0 0 0 0 1
#execute as @e[tag=PearlBullet,scores={BulletRemain=1}] at @s run data modify entity @s owner.L set from entity @p UUIDLeast
#execute as @e[tag=PearlBullet,scores={BulletRemain=1}] at @s run data modify entity @s owner.M set from entity @p UUIDMost
#execute at @e[tag=PearlBullet,scores={BulletRemain=1}] run summon area_effect_cloud ^ ^ ^1 {Duration:1,Radius:0f,Tags:[pos]}
#
#execute as @e[tag=TNTBullet1,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.58 ~ ~ ~ 
#execute as @e[tag=TNTBullet2,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.58 ~ ~-15 ~ 
#execute as @e[tag=TNTBullet3,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.58 ~ ~15 ~ 
#execute at @e[tag=TNTBullet,scores={BulletRemain=1}] run summon area_effect_cloud ^ ^ ^0.35 {Duration:1,Radius:0f,Tags:[pos]}
#
#execute as @e[tag=ShulBullet1,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.58 ~ ~ ~ 
#execute as @e[tag=ShulBullet2,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.58 ~ ~-5 ~ 
#execute as @e[tag=ShulBullet3,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.58 ~ ~5 ~ 
#execute at @e[tag=ShulBullet,scores={BulletRemain=1}] run summon area_effect_cloud ^ ^ ^0.5 {Duration:1,Radius:0f,Tags:[pos]}
#
#execute as @e[tag=AnvilBullet,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~0.5 ~ ~ ~ 
#execute at @e[tag=AnvilBullet,scores={BulletRemain=1}] run playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 2 2
#execute at @e[tag=AnvilBullet,scores={BulletRemain=1}] run particle explosion ~ ~-0.5 ~ 0 0 0 0 1
#execute as @e[tag=AnvilBullet,scores={BulletRemain=20}] run data merge entity @s {NoGravity:0b}
#execute at @e[tag=AnvilBullet,scores={BulletRemain=20}] run summon area_effect_cloud ^ ^ ^1 {Duration:1,Radius:0f,Tags:[pos]}
#execute at @e[tag=AnvilBullet,scores={BulletRemain=20..}] run particle minecraft:instant_effect ~ ~ ~ 0.25 0.25 0.25 0 5
#execute at @e[tag=AnvilBullet,scores={BulletRemain=20}] run playsound minecraft:entity.firework_rocket.launch neutral @a ~ ~ ~ 2 1
#execute as @e[tag=AnvilBullet,scores={BulletRemain=20}] run function chuz_common:move
#
#execute as @e[tag=ItemBullet,tag=!FireBullet,tag=!AnivilBullet,scores={BulletRemain=1}] run function chuz_common:move
#
#execute as @e[tag=FireBullet1,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~ ~ 
#execute as @e[tag=FireBullet2,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~5 ~ 
#execute as @e[tag=FireBullet2,scores={BulletRemain=1}] at @s run tp @s ^-1.2 ^ ^
#execute as @e[tag=FireBullet3,scores={BulletRemain=1}] at @s at @p run tp @s ~ ~1.65 ~ ~-5 ~ 
#execute as @e[tag=FireBullet3,scores={BulletRemain=1}] at @s run tp @s ^1.2 ^ ^
#execute at @e[tag=FireBullet,scores={BulletRemain=1}] run summon area_effect_cloud ^ ^ ^1 {Duration:1,Radius:0f,Tags:[pos]}
#execute as @e[tag=FireBullet,scores={BulletRemain=1}] run function chuz_common:move_fb
#
##ランチャークラフト
#execute as @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:repeater",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:gold_ingot",Count:3b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:ender_eye",Count:1b}}] run tag @s add CraftPotBow1
#execute at @e[tag=CraftPotBow1] run summon item ~ ~ ~ {Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:"{\"text\":\"Potion Launcher\",\"color\":\"aqua\",\"italic\":false}",Lore:["{\"text\":\"Sneak to Charge\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:33,Unbreakable:1b,PotionLauncher:1b,PotBowLevel:1b,Crafted:1b,Charged:0b,Enchantments:[{id:"minecraft:quick_charge",lvl:-2000s}]}}}
#execute at @e[tag=CraftPotBow1] run particle minecraft:crit ~ ~0.2 ~ 0 0 0 0.2 10
#execute at @e[tag=CraftPotBow1] run playsound minecraft:block.anvil.use neutral @a ~ ~ ~ 1 2
#execute at @e[tag=CraftPotBow1] run playsound minecraft:block.iron_door.open neutral @a ~ ~ ~ 1 2
#execute at @e[tag=CraftPotBow1] run kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:repeater",Count:1b}}]
#execute at @e[tag=CraftPotBow1] run kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:3b}}]
#execute at @e[tag=CraftPotBow1] run kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}}]
#execute as @e[tag=CraftPotBow1] run kill @s
#
##ランチャー強化
#execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b,tag:{PotBowLevel:1b}}}] at @s if block ~ ~-0.5 ~ enchanting_table if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run tag @s add CraftPotBow2
#execute at @e[tag=CraftPotBow2] run summon item ~ ~ ~ {Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:"{\"text\":\"Multi Potion Launcher\",\"color\":\"gold\",\"italic\":false}",Lore:["{\"text\":\"Sneak to Charge\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:33,Unbreakable:1b,PotionLauncher:1b,PotBowLevel:2b,Charged:0b,Enchantments:[{id:"minecraft:quick_charge",lvl:-2000s}]}}}
#execute at @e[tag=CraftPotBow2] run particle minecraft:enchanted_hit ~ ~0.2 ~ 0 0 0 0.2 10
#execute at @e[tag=CraftPotBow2] run playsound minecraft:block.enchantment_table.use neutral @a ~ ~ ~ 2 1
#execute at @e[tag=CraftPotBow2] run playsound minecraft:entity.arrow.hit_player neutral @a ~ ~ ~ 2 1
#execute at @e[tag=CraftPotBow2] run kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}]
#execute at @e[tag=CraftPotBow2] run kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}]
#execute as @e[tag=CraftPotBow2] run kill @s
#