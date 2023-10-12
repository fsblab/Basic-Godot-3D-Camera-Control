extends Node3D

var speed
var rootcam
var mousepos

var viewport
var mouse_position
var cam

var direction

var zoomScalar

# Called when the node enters the scene tree for the first time.
func _ready():
	speed = 1
	rootcam = get_node(get_meta("rootCamera"))
	zoomScalar = 100


func _physics_process(delta):
	if Input.is_action_just_pressed("mmb_up"):
		viewport = get_viewport()
		mouse_position = viewport.get_mouse_position()
		cam = viewport.get_camera_3d()
		
		direction = cam.project_ray_normal(mouse_position)
		
		rootcam.transform = rootcam.transform.translated(direction * zoomScalar * delta)
	
	if Input.is_action_just_pressed("mmb_down"):
		viewport = get_viewport()
		mouse_position = viewport.get_mouse_position()
		cam = viewport.get_camera_3d()
		
		direction = cam.project_ray_normal(mouse_position)
		
		rootcam.transform = rootcam.transform.translated(-direction * zoomScalar * delta)


#func _input(event):
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
#			transform = transform.translated_local(Vector3.DOWN * speed)
#		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
#			transform = transform.translated_local(Vector3.UP * speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
