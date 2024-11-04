extends VehicleBody3D

@export var STEER_LIMIT = 0.8
@export var HORSE_POWER = 400

func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis("right", "left"), STEER_LIMIT * delta * 2)
	engine_force = Input.get_axis("backward", "forward") * HORSE_POWER
