tp @s ~ ~ ~
execute store result score @s hub.coordX run data get entity @s Pos[0] 200
execute store result score @s hub.coordY run data get entity @s Pos[1] 100
execute store result score @s hub.coordZ run data get entity @s Pos[2] 200
execute if score @s hub.coordX matches ..0 run scoreboard players operation @s hub.coordX *= negative_one hub.Constants
execute if score @s hub.coordZ matches ..0 run scoreboard players operation @s hub.coordZ *= negative_one hub.Constants
execute if score @s hub.coordX > @e[x=0,tag=hub.border,limit=1] hub.borderSize as @a[sort=nearest,limit=1] run effect give @s[gamemode=!spectator] wither 1 1 true
execute if score @s hub.coordY > @e[x=0,tag=hub.border,limit=1] hub.borderCeiling as @a[sort=nearest,limit=1] run effect give @s[gamemode=!spectator] wither 1 1 true
execute if score @s hub.coordZ > @e[x=0,tag=hub.border,limit=1] hub.borderSize as @a[sort=nearest,limit=1] run effect give @s[gamemode=!spectator] wither 1 1 true
kill @s