extends Node3D


var rotationScalar
var movementSpeed


# Called when the node enters the scene tree for the first time.
func _ready():
	movementSpeed = 20
	rotationScalar = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# WASD camera control to move the camera around
	if Input.is_key_pressed(KEY_W):
		translate(Vector3.FORWARD * delta * movementSpeed)
	if Input.is_key_pressed(KEY_A):
		translate(Vector3.LEFT * delta * movementSpeed)
	if Input.is_key_pressed(KEY_S):
		translate(Vector3.BACK * delta * movementSpeed)
	if Input.is_key_pressed(KEY_D):
		translate(Vector3.RIGHT * delta * movementSpeed)
	
	# restricting the height of the camera to not go below ground or too high
	position.y = clamp(position.y, 0, 20)
