extends Node2D

class_name PipeSpawner

const PIPE_SCENE = preload("res://Pipes/pipes.tscn")
var gamestarted = false
@onready var timer = $Timer
@onready var Bird = $"../Bird"

func _process(delta):
	position.x = Bird.position.x + 2000

func _on_timer_timeout():
	if gamestarted == true:
		var newpipe = PIPE_SCENE.instantiate()
		newpipe.global_position = global_position
		newpipe.position.y += randi_range(-200,200)
		add_child(newpipe)
		
func DeleteTimer():
	timer.queue_free()
