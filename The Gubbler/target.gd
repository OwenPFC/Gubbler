extends Node2D

var targetHit = false
signal targetWasHit
signal removeTarget(t:Node2D)

@onready var happy = load("res://guy.png")
@onready var sad = load("res://guy sad.png")

"""THE AREA2D MUST END UP BEING INVISIBLE!!!!! YOU MUST DO IT"""
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	global_position.x = randi()%550-200
	#pick from an array of sprites
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(targetHit)
	if targetHit:
		"""HAPPY FACE"""
		#$Sprite2D.texture = happy
		targetWasHit.emit()
		$Timer.start()
		targetHit = false

func _on_mouth_area_entered(area):
	if area.visible:
		#print(area)
		targetHit = true


func _on_polygons_basin_hit():
	"""SAD FACE"""
	#$Sprite2D.texture = sad
	pass
func moveTarget():
	global_position.x = randi()%550-200
	global_position.y = 100
	$Sprite2D.texture = happy
	

func _on_timer_timeout():
	moveTarget()
	pass
