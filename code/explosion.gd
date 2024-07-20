extends Area3D
var explosionRange:CollisionShape3D
var explosionSprite:Sprite3D
func _ready():
	explosionSprite= $explosionSprite as Sprite3D
	explosionRange= $explosionRange as CollisionShape3D
	var bodies = get_overlapping_bodies()
	for i in bodies:
		if bodies[i] is CharacterBody3D:
			var dir = explosionRange.global_position.angle_to(bodies[i])
			var force = explosionRange.global_position.distance_to(bodies[i])
			bodies[i].velocity += force*dir
			print("a")
func _process(delta):
	explosionRange
	if (explosionSprite.pixel_size <0):
		queue_free()
	explosionSprite.pixel_size -= delta/8
func _body_entered():
	print("enter!")
	pass
