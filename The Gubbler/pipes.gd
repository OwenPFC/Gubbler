extends Node2D

var crankRote = 0

var roteIncreased = false
var roteDecreased = false

var pipeDelta = 200
signal sendPipeDelta(pd)

var pipeMoving = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#$pipe_1.global_position.x = Global.pipeLeftLoc
	#$pipe_2.global_position.x = Global.pipeRightLoc
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(pipeDelta)
	Global.pipeLeftLoc = $pipe_1.global_position.x
	Global.pipeRightLoc = $pipe_2.global_position.x

	#print(crankRote)
	if roteIncreased:
		if pipeDelta < -7:
			pipeDelta = -6
		else:
			increase()
		roteIncreased = false
	if roteDecreased:
		if pipeDelta > 356:
			pipeDelta = 355
		else:
			decrease()
		roteDecreased = false
	
	pipeDelta = $pipe_2.position.x - $pipe_1.position.x
	if pipeDelta < 0: 
		if pipeDelta > -3:
			pipeDelta = 2
		else:
			pipeDelta = 1
		
	
	sendPipeDelta.emit(pipeDelta)


func _on_crank_send_rote(rote):
	if rote>crankRote:
		roteIncreased = true
	elif rote<crankRote:
		roteDecreased = true
	crankRote = rote

func increase():
	if pipeDelta >=4:
		$pipe_1.position.x += 3
		$pipe_2.position.x -= 3
		$water.scale.x -= 0.0025

func decrease():
	$pipe_1.position.x -= 3
	$pipe_2.position.x += 3
	$water.scale.x += 0.0025
	
