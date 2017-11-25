extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var sample_player = get_node( "../background_noise" )
onready var anim_player = get_node( "../fog_player" )
export var main_scene = ""

var next_scene_counter = 0
export var next_scene_time = 5.0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_start_button_pressed():
	sample_player.play( "train_honk" )
	anim_player.play("fog_next_level")
	set_process( true )

func _process( delta ):
	next_scene_counter += delta
	if( next_scene_counter > next_scene_time ):
		get_tree().change_scene( main_scene )
