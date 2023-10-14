extends Node3D

var speed
var mousepos

var viewport
var mousePosition
var cam
var rootNode

var direction
var zoomScalar

# Called when the node enters the scene tree for the first time.
func _ready():
	speed = 1
	zoomScalar = 100
	
	viewport = get_viewport()
	cam = viewport.get_camera_3d()
	
	rootNode = get_node(get_meta("RootNode"))


#the camera moves towards or away from the mouse when scroll wheel is moved up or down
func _physics_process(delta):
	if Input.is_action_just_pressed("mmb_up"):
		mousePosition = viewport.get_mouse_position()

		direction = cam.project_ray_normal(mousePosition)
		rootNode.translate(direction * zoomScalar * delta)

	if Input.is_action_just_pressed("mmb_down"):
		mousePosition = viewport.get_mouse_position()

		direction = cam.project_ray_normal(mousePosition)
		rootNode.translate(-direction * zoomScalar * delta)

	position.y = clamp(position.y, 0, 20)


#uncomment for camera to move up or down when scroll wheel is used

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if Input.is_action_just_pressed("mmb_up"):
#		translate(Vector3.DOWN * delta * zoomScalar)
#
#	if Input.is_action_just_pressed("mmb_down"):
#		translate(Vector3.UP * delta * zoomScalar)
