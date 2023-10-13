extends Node3D


var rotationScalar
var zoomScalar


func _ready():
	rotationScalar = 2
	zoomScalar = 20


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		rotate_x(- Input.get_last_mouse_velocity().normalized().y * delta * rotationScalar)
	
	rotation.x = clamp(rotation.x, -.8, .1)

	if Input.is_action_just_pressed("mmb_up"):
		translate(Vector3.FORWARD * delta * zoomScalar)

	if Input.is_action_just_pressed("mmb_down"):
		translate(Vector3.BACK * delta * zoomScalar)
	
	position.y = clamp(position.y, 0, 20)
