extends CharacterBody2D


const SPEED = 300.0
var mask_on = 0

func _physics_process(delta: float) -> void:
	var dirY = Input.get_axis("cima", "baixo")
	var dirX = Input.get_axis("esquerda", "direita")
	
	if (dirX):
		velocity.x = dirX * SPEED
		velocity.y = 0
	elif dirY:
		velocity.y = dirY * SPEED
		velocity.x = 0
	else:
		velocity.y = 0
		velocity.x = 0
	
	if Input.is_action_just_pressed("espaco"):
		put_mask()
	move_and_slide()
	
	
func put_mask() -> void:
	if mask_on > 1:
		mask_on = 0
	else:
		mask_on += 1
	
	if mask_on == 0:
		print("Sem mascara")
	elif mask_on == 1:
		print ("mascara 1")
	elif mask_on == 2:
		print ("mascara 2")  
