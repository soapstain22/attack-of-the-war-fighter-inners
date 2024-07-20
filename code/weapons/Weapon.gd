extends Node3D
class_name Weapon
@export var model : MeshInstance3D
@export var image: CompressedTexture2D
@export var recoil_strength: float = 50
var remaining_recoil: float = 0
var recoil_rotation: float = 0.0

func _process(delta):
	if remaining_recoil > 0:
		var dif = remaining_recoil / recoil_strength
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
	pass
func recoil():
	remaining_recoil = recoil_strength
	pass

