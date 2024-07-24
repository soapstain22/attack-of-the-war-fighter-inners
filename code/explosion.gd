extends Area3D
var explosionRange:CollisionShape3D
var explosionSprite:Sprite3D
func _ready():
	explosionSprite= $explosionSprite as Sprite3D
	explosionRange= $explosionRange as CollisionShape3D
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for i in bodies:
		var dir = explosionRange.global_position.direction_to(i.global_position)
		var force = 20-explosionRange.global_position.distance_to(i.global_position)
		if i is StaticBody3D:
			pass
		else:
			var c:RigidBody3D = i as RigidBody3D 
			if i != null:
				i.velocity = force*dir
				print(c)

func _process(delta):

	if (explosionSprite.pixel_size <0):
		queue_free()
	explosionSprite.pixel_size -= delta/8
