attack of the war fighter inners
---
u play as the war fighter inners and u fight in the war!
![cooltext460759028877072](https://hackmd.io/_uploads/Hyf2jGSU0.gif)
![cooltext460759155489182](https://hackmd.io/_uploads/SydMhMrU0.png)
# How to get started
1. [Join the discord](https://discord.gg/SZVBgPmzN9).
2. Fill out the Roster channel in the discord.
3. If you dont have a github account, make one.
4. [Fork the master branch](https://github.com/soapstain22/attack-of-the-war-fighter-inners/fork).
5. Download github desktop and use it to download your fork.
6. [Make changes to your fork based on an issue](https://github.com/soapstain22/attack-of-the-war-fighter-inners/issues).
7. Push your changes to the fork online.
8. [Create a pull request mentioning an issue](https://github.com/soapstain22/attack-of-the-war-fighter-inners/compare).
9. Wait for results.
# Scope
web-based FPS in which you take advantage of each classes movement to win in combat

## Major inspirations
geocities websites
postal 2
parkour based physics platformers
tf2
[this video](https://va.media.tumblr.com/tumblr_q8l962ub6l1u9bbh3.mp4)
[scram](https://scramdad.itch.io/scram)
## Gameplay loop
you got 2 teams of 16 (probably)
blow eachother up
game ends when the objective is completed based on gamemode
standard shit
# Gamemodes:
For all team gamemodes:
Healing = 1xp for every 2 hp recovered
Kills = 100xp
For non team gamemodes:
Assists = (damage done)/(max hp)
Respawn points have booleans that determine the gamemode or team they are valid for respawning in.
## Capture the flag:
Capture the flag and bring it back to your base.
Winning team = 500xp
Flag capture = 500xp

Map defines each flag limit. Usually 3
## Deathmatch:
Kill as many people before time runs out.
Kill = 100xp

# Classes
Classes can be changed at any time. Each class has a loadout that can be altered to use new weapons 
## barber
![image](https://web.archive.org/web/20091027000118im_/http://geocities.com/mueble_soto/pensa/imagenes/barber_sweeping_floor_md_wht.gif)
u can put bandages on people
and you get a scissor to stab people
| Variable | Initial Value |
| -------- | -------- |
| Max Health     | 150     |
| Speed     | 1.1     |

### weapons
| mainarm                                                        | sidearm                                                                                           | utility                                      |
| -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| **scissors**: you can stab things                              | **broom**: push back enemies and also push yourself back by recoil. right click and you can smack | **bandage**: heal people by clicking on them |
| **electric razor**: chainsaw type weapon but you cant throw it | **blow dryer**: does no damage but sends people flying                                            |                                              |
## soldier
![image](https://web.archive.org/web/20091022145223im_/http://www.geocities.com/truetankdogs03/military_soldier_firing_md_wht.gif)
u get guns and a rocket launcher
| Variable   | Initial Value |
| ---------- | ------------- |
| Max Health | 120           |
| Speed      | 1          |
### weapons

| mainarm                  | sidearm    | utility      |
|:------------------------ | ---------- | ------------ |
| **rocket launcher**:     | **smg**:   | **bandage**: |
| **sniper rifle**:        | **pistol** |              |
| **grenade launcher**: it |            |              |

## dwarf
![image](https://web.archive.org/web/20090807103859im_/http://geocities.com/crazycompman/images/dwarfanim.gif)


| Variable | Initial Value |
| -------- | -------- |
| Max Health     | 100     |
| Speed     | 1.2     |

### weapons
| mainarm                          | sidearm       | utility      |
|:-------------------------------- | ------------- | ------------ |
| **pickaxe**: dig tiny holes fast. right click allows you to pick into things and pull yourself above them, used to scale walls | **crossbow**: shitty sniper rifle | **40-ounce**: drink a bit of your malt liquor |
| **shovel**: dig big holes slow   | **dynamite**: bomb  |              |
| **sledgehammer**: BIG MELEE      |               |              |
he will take 50% less damage from explosions. because he is exploding very carefully.
## knight
![image](https://web.archive.org/web/20091026204339/http://www.geocities.com/cushingpeter/knight2.gif)
sword and shield
### weapons
| mainarm                                    | sidearm      | utility       |
|:------------------------------------------ | ------------ | ------------- |
| **sword**: works with shield               | **shield**: usable as a sled too   | **scream**: loud sound |
| **2 hand sword**: no sidearm double damage | |               |
| **waraxe**: can cut through stuff | |               |
| **spear**: can throw | **dagger** really dogshit but you can throw it|               |

usually the go to for this glass is to buy a bomb and use your shield to stop the blast and essentially rocket jump around and dive into people with your sword.
## archer
![image](https://web.archive.org/web/20090808054427/http://www.geocities.com/evelynkaye/sm.archer.gif)
bow and arrow
### weapons
| mainarm                                    | sidearm      | utility       |
|:------------------------------------------ | ------------ | ------------- |
| **shortbow**: shoot arrow quick            | **grappling hook**: swing around the map   | **scream**: loud sound |
| **longbow**: shoot arrow slow             | **grappling hook**: swing around the map   |  |
Has access to different arrow types.
# Maps
also see map voting
## bedroom
![image](https://static.wikia.nocookie.net/blockland/images/3/3f/Bedroom.png/revision/latest?cb=20100721032358)
## kitchen
![image](https://static.wikia.nocookie.net/blockland/images/d/d3/Kitchen.jpg/revision/latest?cb=20120220063521)
todo
# Mechanics
## Health
Each class has a defined max health and minimum health. Some classes can recover HP slowly. When you hit 0 health you explode. Respawns are random based on teams. Also, health pickups are available around the map and will regenerate after 15 seconds
## Fall damage
when u fall, calculate the distance of the fall/20.
idk man.
archer has fall damage immunity
## Respawning
Pick a spawn point and respawn. im not sure how to flesh this out yet. haha!
Spawn points on the map determine where to place players after respawn.
> Can also be placed down? maybe.
## Leveling
### Ranks
The ranking system is used to unlock new content as a reward for gradual playtime.
The user has a defined rank based on their total EXP gained throughout all sessions. It is not dependent on class.
At certian ranks, more content is unlocked.
### Weapon leveling
Each weapon has a total permanent kill count. More kills will unlock more attatchments for weapons. Skins are also unlocked for each gun at certian kill counts.
Attachments can be things like a laser sight, suppressor, muzzle break or boost, bigger or smaller ammo sizes that change your speed and recoil.
# Interface Description
Will figure out what works best in practice
## Menus
The following are menus that can be entered and exited in a first in first out order.
Need to draw hypothetical screenshots soon 
### Ingame pause menu buttons
* loadout
* change class
* disconnect
* votekick
* stats
* settings
### Main menu buttons
* servers
* settings
* stats
* Loadout
### Loadout Menu buttons
* Mainhand Weapon
* Offhand weapon
* Utility
* Armor
* cosmetic hat
## Settings
* Slider: General FOV: 70 to 110 with default being 90
* Slider: Aimdown FOV: 50 to 110 with default being 90
* Slider: Master Volume: 0 to 100 with default being 50
* Slider: Voice Volume: 0 to 100 with default being 50
* Slider: SFX Volume: 0 to 100 with default being 50
* Dropdown: Graphics Quality - [Doodoo, Low, Medium, High, XTreme]
* Button: Keybinds
