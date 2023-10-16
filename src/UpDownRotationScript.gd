extends Node3D


var rotationScalar
var zoomScalar
var rootNode


func _ready():
	rotationScalar = 2
	zoomScalar = 20
	
	rootNode = get_node(get_meta("RootNode"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# rotating the camera by pressing the middle mouse button
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		rotate_x(- Input.get_last_mouse_velocity().normalized().y * delta * rotationScalar)
		rootNode.rotate_y(- Input.get_last_mouse_velocity().normalized().x * delta * rotationScalar)
	
	# restricting the rotation on the x axis of the camera to not rotate too far down or up 
	rotation.x = clamp(rotation.x, -.8, .1)
	
	
#	uncomment for the zoom to move into the direction the camera is looking at

#	if Input.is_action_just_pressed("mmb_up"):
#		translate(Vector3.FORWARD * delta * zoomScalar)
#
#	if Input.is_action_just_pressed("mmb_down"):
#		translate(Vector3.BACK * delta * zoomScalar)
#
#	position.y = clamp(position.y, 0, 20)
