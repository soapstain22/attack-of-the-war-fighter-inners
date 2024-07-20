extends Weapon
class_name Bow
var pull: float = 0.0
var pulling: bool = false
@export var arrow:PackedScene
@export var ammo = 10
@export var maxammo = 10
@export var firesound : AudioStreamWAV
@export var force = 20
func _process(delta):
	if pulling:
		print("pulling back")
		pull=clampf(pull+delta,0,2)
		# somehow modify/warp the model to look like it's being pulled
		
		
func attack():
	pulling=true
	pass
func attack_release():
	pulling=false
	var a:RigidBody3D = arrow.instantiate() as RigidBody3D
	get_tree().root.get_child(0).add_child(a)
	a.apply_force(Vector3.FORWARD*pull)
	return a;
