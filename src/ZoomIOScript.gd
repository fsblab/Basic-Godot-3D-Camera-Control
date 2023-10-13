extends Node3D

var speed
var mousepos

var viewport
var mouse_position
var cam

var direction
var zoomScalar

# Called when the node enters the scene tree for the first time.
func _ready():
	speed = 1
	zoomScalar = 100
	
	viewport = get_viewport()
	cam = viewport.get_camera_3d()


#func _physics_process(delta):		
#	if Input.is_action_just_pressed("mmb_up"):
#		mouse_position = viewport.get_mouse_position()
#
#		direction = cam.project_ray_normal(mouse_position)
#		translate(direction * zoomScalar * delta)
#
#	if Input.is_action_just_pressed("mmb_down"):
#		mouse_position = viewport.get_mouse_position()
#
#		direction = cam.project_ray_normal(mouse_position)
#		translate(-direction * zoomScalar * delta)
#
#	position.y = clamp(position.y, 0, 20)


#func _input(event):
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
#			translate(Vector3.DOWN * zoomScalar * .01)
#		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
#			translate(Vector3.UP * zoomScalar * .01)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if Input.is_action_just_pressed("mmb_up"):
#		translate(Vector3.DOWN * delta * zoomScalar)
#
#	if Input.is_action_just_pressed("mmb_down"):
#		translate(Vector3.UP * delta * zoomScalar)
