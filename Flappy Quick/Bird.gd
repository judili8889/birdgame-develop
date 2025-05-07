extends CharacterBody2D

class_name Bird

@export_category("Gravity and Jump")
@export var gravity = 20
@export var Jumpspeed = -12

@export_group("Is it dead?")
@export var Alive = true
@export var gamestarted:bool = false

@onready var FeatherScene = preload("res://Level/Bird/Feathers.tscn")

func _physics_process(delta):
	if gamestarted == true:
		velocity.y += gravity * delta
		
		if Alive == true:
			if velocity.y <0:
				rotation_degrees = lerpf(rotation_degrees, -30, 0.2)
			else:
				rotation_degrees = lerpf(rotation_degrees, 30, 0.2)
				
		if Input.is_action_just_pressed("jump") and Alive == true:
			velocity.y = Jumpspeed
			
	move_and_collide(velocity)
	
func HitPipe():
	var FeatherExplosion = FeatherScene.instantiate()
	get_parent().add_child(FeatherExplosion)
	FeatherExplosion.global_position = global_position
	FeatherExplosion.emitting = true
	rotation_degrees = 210
	velocity.y = 0
	
