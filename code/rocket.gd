extends RigidBody3D
var explosion


# Called when the node enters the scene tree for the first time.
func _ready():
	explosion=preload("res://scenes/prefabs/projectiles/explosion.tscn")

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	for i in get_colliding_bodies():
		var contact_collider = i
		if is_instance_valid(contact_collider):
			var a = explosion as PackedScene
			a = a.instantiate()
			get_tree().root.get_child(0).add_child(a)
			a.global_position = global_position
		queue_free()
			#get_tree().root.get_child(0).add_child(explosion)


