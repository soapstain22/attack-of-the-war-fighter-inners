extends Node3D
class_name Weapon
@export var model : MeshInstance3D
@export var image: CompressedTexture2D
@export var force: float = 0
var remaining_recoil: float = 0
var recoil_rotation: float = 0.0

##ALRIGHT LOOK HERE
#this is the abstract class for weapons. weapons are things that go in your hand
#if you want to make a melee weapon, make something that extends the melee class
#if you want to make a gun, extend the gun class.
#dont add anything here unless you need it to add it to any other weapon in the game 
func _process(delta):
	if remaining_recoil > 0:
		var dif = remaining_recoil / force
		rotation.x = lerp(0.0, recoil_rotation, dif)
		remaining_recoil -= 2
	pass
func attack():
	pass
func attack_release():
	pass
func aimdown():
	pass
func aimdown_release():
	pass 
func reload():
	print("abstract reload")
	pass
func recoil():
	remaining_recoil = force
	pass

