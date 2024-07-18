extends Control
@onready var clip_ammo = $panel/Ammo/ClipAmmo
@onready var total_ammo = $panel/Ammo/TotalAmmo
@onready var weapon = $panel2/weapon

var ammoCount =0 
var ammoTop= 0 

func updateSlot():
	pass
	
func setMaxAmmo(count):
	ammoTop = count
	total_ammo.text = ammoTop
	
func setAmmo(count):
	ammoCount = count
	clip_ammo.text = str(ammoCount)
	
func ammoBlink():
	pass
	
func setWeaponIcon(icon):
	weapon.texture = icon
