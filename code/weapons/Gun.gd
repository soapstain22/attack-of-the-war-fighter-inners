extends Weapon
class_name Gun
# Called when the node enters the scene tree for the first time.
@export var ammo = 40
@export var maxammo = 40
@export var bullet:PackedScene
@export var clipsize = 7
@export var clip = 7
@export var firesound : AudioStreamWAV
@export var reloadDelay=1
var reloadTimeRemaining =0
@export var firingDelay = 0.5
var firingTimeRemaining =0
@export var aimdownDelay = 0.2
var aimdownTimeRemaining =0

func _init():
	recoil_rotation = -0.3
	force = 20
	pass

func _process(delta):
	super(delta)
	if reloadTimeRemaining > 0:
		#print(cooldown)
		reloadTimeRemaining -= delta
	if firingTimeRemaining > 0:
		firingTimeRemaining -= delta

func reload():
	#incoming error i just needed to fix this before this class ends
	if ammo != clipsize:
		var a = clipsize - clip
		clip += a
		ammo -= a
		reloadTimeRemaining = reloadDelay
func _ready():
	pass
func aimDown():
	pass
func stopAimDown():
	pass
func attack():

	if (reloadTimeRemaining <= 0 && firingTimeRemaining <= 0 && clip>0):
		print("shooting")
		return shoot()

func shoot():
	clip -=1
	firingTimeRemaining = firingDelay
	var newbullet = bullet.instantiate() as RigidBody3D
	newbullet.linear_velocity+=Vector3.FORWARD*force
	get_tree().root.get_child(0).add_child(newbullet)
	newbullet.global_position = $firepoint.global_position
	recoil()
	return newbullet as RigidBody3D
