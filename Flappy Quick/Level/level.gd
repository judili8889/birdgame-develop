extends Node2D

@onready var pipe_spawner = $PipeSpawner
@onready var bird = $Bird

var GameStarted = false

func _process(delta):
	
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
		
	if Input.is_action_just_pressed("jump"):
		GameStarted = true
		pipe_spawner.gamestarted = true
		bird.gamestarted = true
