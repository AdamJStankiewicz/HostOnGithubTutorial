extends CharacterBody2D


const SPEED = 300.0
var direction = Vector2(0,0)

func _unhandled_input(event):
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	
func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if direction:
		velocity.x = direction.x * SPEED
		velocity.y = direction.y * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
