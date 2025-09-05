extends Node2D

var pipeDelta = 200
var ceilingReached = false
var coordsSent = false
#@onready var water_arc = $water_arc
var waterDone = false

var waterGoing = false


signal sendEndOfWater(x,y)
#signal killTheCrank
#var killCrank = false

var allowedToPlay = false
# Called when the node enters the scene tree for the first time.
func _ready():
	#killCrank = false
	if $water.scale.y >0.4:
		$water.scale.y = 0.4
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("test"):
		waterGoing = true
	if waterGoing:
		$water.visible = true
		$water.monitorable = true
		$water.monitoring = true
		waterGoing = true
			#if !ceilingReached and Input.is_action_pressed("test"):
		if !ceilingReached:
			expandWater()
		elif ceilingReached and !coordsSent: #this looks stupid but I'm debugging rn don't judge :(
			sendEndOfWater.emit($water/end_of_water.global_position.x,$water/end_of_water.global_position.y)
			coordsSent = true
			waterGoing = false
	
		
	if waterDone:
		removeWater()
		

func expandWater():
	if pipeDelta<0:
		pipeDelta*=-1
	$water.scale.y+=pipeDelta*30

func removeWater():
	#if pipeDelta<0:
		#pipeDelta*=-1
	#if pipeDelta>0:
		#$water/water_sprite.scale.y-=pipeDelta*30
	#if $water/water_sprite.skew<80:
		#$water/water_sprite.skew+=4
		#print($water/water_sprite.skew)
	#else:
		#$water/water_sprite.skew = 89.9
		#print("set")
		#waterDone = false
	$water.visible = false
	$water.monitorable = false
	$water.monitoring = false
	$water.scale.y = 0.4
	
	"""We'll get back to it"""
	pass
		
func _on_pipes_send_pipe_delta(pd):
	#this makes it so a low number means a faster speed. The constant
	#is still a question idk what I want it to be yet
	#print(pd)
	pipeDelta = 1/(pd*5)
	if pipeDelta == 0:
		pipeDelta = 1
	$water_ceiling.position.y = ((1/(pipeDelta)))/(2*4)-250

func _on_water_ceiling_area_entered(area):
	if area == $water:
		ceilingReached = true
		#killCrank = true



func _on_polygons_basin_hit():
	$Timer.start()
	
func _on_timer_timeout():
	waterDone = true
	
func _on_target_target_was_hit():
	$Timer.start()


func _on_target_generator_reset_water():
	#ceilingReached = false
	#coordsSent = false
	#waterDone = false
	#waterGoing = false
	pass


func _on_polygons_water_reset_2():
	ceilingReached = false
	coordsSent = false
	waterDone = false
	waterGoing = false

