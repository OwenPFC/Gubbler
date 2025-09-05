extends Node2D

@onready var crank = $"."
@onready var lever = $lever
@onready var area = $area
@onready var sound = $AudioStreamPlayer2D
@onready var crankSound = load("res://032756_crank-68383 USE THIS ONE.wav")

@onready var anim0 = load("res://gubbler no arms real/1.png")
@onready var anim1 = load("res://gubbler no arms real/2.png")
@onready var anim2 = load("res://gubbler no arms real/Gubbler 2.2.png")
@onready var anim3 = load("res://gubbler no arms real/3.png")
@onready var anim4 = load("res://gubbler no arms real/4.png")
@onready var anim5 = load("res://gubbler no arms real/5.png")
@onready var anim6 = load("res://gubbler no arms real/6.png")
@onready var anim7 = load("res://gubbler no arms real/7.png")
@onready var anim8 = load("res://gubbler no arms real/8.png")
@onready var anim9 = load("res://gubbler no arms real/9.png")
@onready var anim10 = load("res://gubbler no arms real/10.png")
@onready var anim11 = load("res://gubbler no arms real/11.png")
@onready var anim12 = load("res://gubbler no arms real/12.png")
@onready var anim13 = load("res://gubbler no arms real/13.png")

var turning = false
var clicked = false

signal sendRote(rote)

var stop = false

var frame = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#var armYPos = $arms/arms_indicator.global_position.y
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_right"):
		frame+=1
	if Input.is_action_just_pressed("ui_left") and frame>0:
		frame-=1
	$gubbler_body.frame = frame
		
	
	if $lever/lever_indicator != null:
		$arms.global_position.x = $lever/lever_indicator.global_position.x
		$arms.global_position.y = $lever/lever_indicator.global_position.y
	else:
		$arms.global_position.x = $area/lever/lever_indicator.global_position.x
		$arms.global_position.y = $area/lever/lever_indicator.global_position.y
		
	$gubbler_body.global_position.x = $arms/arms_indicator.global_position.x
		
	sendRote.emit(int(area.rotation))
	Global.rote = area.rotation

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				turning = true
			else:
				turning = false
				clicked = false
				lever.reparent(crank)

	if turning and clicked and (area.rotation <= 37 and area.rotation >= -39):
		if(!sound.is_playing()):
			sound.stream = crankSound
			sound.play()
	#if turning and clicked:
		area.look_at(get_global_mouse_position())
		lever.reparent(area)
	else:
		sound.stop()
	if area.rotation >=37:
		area.rotation = 36
	if area.rotation <= -39:
		area.rotation = -38
		
	#print(armYPos)

#this is different than on top because this is for
#specifically when the mouse is on the lever so it knows
#whether or not you are clicking on the lever
func _on_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				clicked = true
				


func _on_target_remove_target(t):
	pass # Replace with function body.

func _on_water_kill_the_crank():
	stop = true


func _on_anim_1_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim0
		
func _on_anim_2_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim1


func _on_anim_3_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim2


func _on_anim_4_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim3


func _on_anim_5_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim4
		
func _on_anim_6_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim5


func _on_anim_7_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim6


func _on_anim_8_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim9

func _on_anim_9_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim9

func _on_anim_10_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim10

func _on_anim_11_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim7

func _on_anim_12_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim12

func _on_anim_13_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim13

func _on_anim_14_area_entered(area):
	if area == $arms/arms_indicator/gubbler_area:
		$gubbler_body.texture = anim13
