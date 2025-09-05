extends Node2D

@onready var music = $AudioStreamPlayer2D
var blowing = preload("res://audio_jazz.mp3")
# Called when the node enters the scene tree for the first time.
func _ready():
#	print(get_tree().get_root().get_child(1).get_child(3).get_child(1))
	music.stream = blowing
	music.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !music.is_playing():
		music.stream = blowing
		music.play()



