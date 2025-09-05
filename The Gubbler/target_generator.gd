extends Node2D

@onready var targets = preload("res://target.tscn")
var needNewTarget = true

var activeTarget:Node2D

signal resetWater

var removeTargets = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#randomize()
	#makeTarget()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if get_node_or_null("target_generator/target") == null:
	#if get_node_or_null("target") == null:
	#	print("I'm gone")
	#	needNewTarget = true
	
	#if needNewTarget:
	#	$Timer.start
	if removeTargets:
		#$Timer.start() 
		#removeTargets = false 
		pass
	pass
	
func makeTarget():
	"""var target = targets.instantiate()
	add_child(target)
	target.global_position.x = randi()%550-200
	#target.global_position.y =300
	print(target.global_position.y)
	target.global_position.y = 100
	activeTarget = target
	
	print("child made")
	"""
	pass
	
func _on_timer_timeout():
	#makeTarget()
	#resetWater.emit()
	pass
	
func _on_target_remove_target(t):
	#removeTargets = true
	pass
	
