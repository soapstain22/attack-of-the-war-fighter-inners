extends RigidBody3D
var explosion:CSGSphere3D
var collider:CollisionShape3D

# Called when the node enters the scene tree for the first time.
func _ready():
	explosion=$Cylinder/explos
	collider=$CollisionShape3D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	for i in state.get_contact_count():
		var contact_collider := state.get_contact_collider_object(i)
		var contact_normal := state.get_contact_local_normal(i)
		if is_instance_valid(contact_collider):
			if contact_collider.is_in_group("carving"):
				print(contact_collider.to_string())
				var p :CSGCombiner3D
				p=contact_collider
				explosion.visible =true
				explosion.reparent(contact_collider)
				queue_free()
