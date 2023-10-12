extends Node3D


var rotationScalar


func _ready():
	rotationScalar = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		rotation.x -= Input.get_last_mouse_velocity().normalized().y * delta * rotationScalar
	
	rotation.x = clamp(rotation.x, -.8, .1)
