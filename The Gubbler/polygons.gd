extends Node2D

var basinWasHit = false
signal basinHit
signal waterReset2

var index = 1
var makeVisible = false
var waterDone = false
var windex = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if basinWasHit:
		basinHit.emit()
		#print("basin was hit")
		basinWasHit = false
		makeVisible = false
		$Timer.start()
	
	if makeVisible:
		if index == 1:
			$"water_arc/1".visible = true
			$"water_arc/1/polygon_1".disabled = false
		elif index == 2:
			$"water_arc/2".visible = true
			$"water_arc/2/polygon_2".disabled = false
		elif index == 3:
			$"water_arc/2_5".visible = true
			$"water_arc/2_5/CollisionPolygon2D".disabled = false
		elif index == 4:
			$"water_arc/3".visible = true
			$"water_arc/3/polygon_3".disabled = false
		elif index == 5:
			$"water_arc/4".visible = true
			$"water_arc/4/polygon_4".disabled = false
		elif index == 6:
			$"water_arc/5".visible = true
			$"water_arc/5/CollisionPolygon2D".disabled = false
		elif index == 7:
			$"water_arc/6".visible = true
			$"water_arc/6/CollisionPolygon2D".disabled = false
		elif index == 8:
			$"water_arc/7".visible = true
			$"water_arc/7/CollisionPolygon2D".disabled = false
		elif index == 9:
			$"water_arc/8".visible = true
			$"water_arc/8/CollisionPolygon2D".disabled = false
		elif index == 10:
			$"water_arc/9".visible = true
			$"water_arc/9/CollisionPolygon2D".disabled = false
		elif index == 11:
			$"water_arc/10".visible = true
			$"water_arc/10/CollisionPolygon2D".disabled = false
		elif index == 12:
			$"water_arc/11".visible = true
			$"water_arc/11/CollisionPolygon2D".disabled = false
		elif index == 13:
			$"water_arc/12".visible = true
			$"water_arc/12/CollisionPolygon2D".disabled = false
		elif index == 14:
			$"water_arc/13".visible = true
			$"water_arc/13/CollisionPolygon2D".disabled = false
		elif index == 15:
			$"water_arc/14".visible = true
			$"water_arc/14/CollisionPolygon2D".disabled = false
		elif index == 16:
			$"water_arc/15".visible = true
			$"water_arc/15/CollisionPolygon2D".disabled = false
		elif index == 17:
			$"water_arc/16".visible = true
			$"water_arc/16/CollisionPolygon2D".disabled = false
		elif index == 18:
			$"water_arc/17".visible = true
			$"water_arc/17/CollisionPolygon2D".disabled = false
		elif index == 19:
			$"water_arc/18".visible = true
			$"water_arc/18/CollisionPolygon2D".disabled = false
		elif index == 20:
			$"water_arc/19".visible = true
			$"water_arc/19/CollisionPolygon2D".disabled = false
		elif index == 21:
			$"water_arc/20".visible = true
			$"water_arc/20/CollisionPolygon2D".disabled = false
		elif index == 22:
			$"water_arc/21".visible = true
			$"water_arc/21/CollisionPolygon2D".disabled = false
		elif index == 23:
			$"water_arc/22".visible = true
			$"water_arc/22/CollisionPolygon2D".disabled = false
		elif index == 24:
			$"water_arc/23".visible = true
			$"water_arc/23/CollisionPolygon2D".disabled = false
			makeVisible = false
			index = -1
		index+=1
		
	if waterDone:
		if windex == 1:
			$"water_arc/1".visible = false
			$"water_arc/1/polygon_1".disabled = true
		elif windex == 2:
			$"water_arc/2".visible = false
			$"water_arc/2/polygon_2".disabled = true
		elif windex == 3:
			$"water_arc/2_5".visible = false
			$"water_arc/2_5/CollisionPolygon2D".disabled = true
		elif windex == 4:
			$"water_arc/3".visible = false
			$"water_arc/3/polygon_3".disabled = true
		elif windex == 5:
			$"water_arc/4".visible = false
			$"water_arc/4/polygon_4".disabled = true
		elif windex == 6:
			$"water_arc/5".visible = false
			$"water_arc/5/CollisionPolygon2D".disabled = true
		elif windex == 7:
			$"water_arc/6".visible = false
			$"water_arc/6/CollisionPolygon2D".disabled = true
		elif windex == 8:
			$"water_arc/7".visible = false
			$"water_arc/7/CollisionPolygon2D".disabled = true
		elif windex == 9:
			$"water_arc/8".visible = false
			$"water_arc/8/CollisionPolygon2D".disabled = true
		elif windex == 10:
			$"water_arc/9".visible = false
			$"water_arc/9/CollisionPolygon2D".disabled = true
		elif windex == 11:
			$"water_arc/10".visible = false
			$"water_arc/10/CollisionPolygon2D".disabled = true
		elif windex == 12:
			$"water_arc/11".visible = false
			$"water_arc/11/CollisionPolygon2D".disabled = true
		elif windex == 13:
			$"water_arc/12".visible = false
			$"water_arc/12/CollisionPolygon2D".disabled = true
		elif windex == 14:
			$"water_arc/13".visible = false
			$"water_arc/13/CollisionPolygon2D".disabled = true
		elif windex == 15:
			$"water_arc/14".visible = false
			$"water_arc/14/CollisionPolygon2D".disabled = true
		elif windex == 16:
			$"water_arc/15".visible = false
			$"water_arc/15/CollisionPolygon2D".disabled = true
		elif windex == 17:
			$"water_arc/16".visible = false
			$"water_arc/16/CollisionPolygon2D".disabled = true
		elif windex == 18:
			$"water_arc/17".visible = false
			$"water_arc/17/CollisionPolygon2D".disabled = true
		elif windex == 19:
			$"water_arc/18".visible = false
			$"water_arc/18/CollisionPolygon2D".disabled = true
		elif windex == 20:
			$"water_arc/19".visible = false
			$"water_arc/19/CollisionPolygon2D".disabled = true
		elif windex == 21:
			$"water_arc/20".visible = false
			$"water_arc/20/CollisionPolygon2D".disabled = true
		elif windex == 22:
			$"water_arc/21".visible = false
			$"water_arc/21/CollisionPolygon2D".disabled = true
		elif windex == 23:
			$"water_arc/22".visible = false
			$"water_arc/22/CollisionPolygon2D".disabled = true
		elif windex == 24:
			$"water_arc/23".visible = false
			$"water_arc/23/CollisionPolygon2D".disabled = true
			waterReset2.emit()
			waterDone = false
			windex = -1
		windex+=1

func _on_water_send_end_of_water(x, y):
	$water_arc.global_position.x = x - 4
	$water_arc.global_position.y = y + 4
	makeVisible = true

		
func _on_basin_area_entered(area):
	if area.visible:
		basinWasHit = true

func _on_timer_timeout():
	waterDone = true
	index = 0
	windex = 0
	
func _on_target_target_was_hit():
	makeVisible = false
	$Timer.start()
	index = 0
	windex = 0
	#basinWasHit = true
