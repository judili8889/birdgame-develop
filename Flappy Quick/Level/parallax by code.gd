extends ParallaxLayer

@export var LayerSpeed: float = -15.0

func _process(delta):
	self.motion_offset.x += LayerSpeed
