extends Node2D

class_name Pipes

var speed = 10

func _process(delta):
	position.x -= speed


func _on_top_pipe_body_entered(body):
	if body is Bird:
		if body.Alive == true:
			body.HitPipe()
		body.alive = false
