extends Node3D


var rotationScalar


# Called when the node enters the scene tree for the first time.
func _ready():
	rotationScalar = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		rotation.y -= Input.get_last_mouse_velocity().normalized().x * delta * rotationScalar
