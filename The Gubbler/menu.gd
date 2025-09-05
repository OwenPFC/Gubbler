extends Node2D

@onready var music = $AudioStreamPlayer2D
var bubbleAllDay = preload("res://bubbles all day long.mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	music.stream = bubbleAllDay
	music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !music.is_playing():
		music.stream = bubbleAllDay
		music.play()

func _on_credit_button_pressed():
	$credits.visible = true
	$credit_exit.visible = true

func _on_credit_exit_pressed():
	$credits.visible = false
	$credit_exit.visible = false
	
func _on_start_pressed():
	get_tree().change_scene_to_file("res://level.tscn")
