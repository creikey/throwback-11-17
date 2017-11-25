extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var max_slides = 4
var current_slide = 0
export var slide_1 = ""
export var slide_2 = ""
export var slide_3 = ""
export var slide_4 = ""
export var slide_5 = ""
var to_set_flags
onready var slides = [ slide_1, slide_2, slide_3, slide_4, slide_5  ]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	print( "Flags are ", get_texture().get_flags() )
	to_set_flags = get_texture().get_flags()
	get_texture().set_flags( 0 )
	print( "Current panel is ", slides[current_slide] )
	_change_to_image( slides[current_slide] )


func _on_next_slide_button_pressed():
	#get_tree().change_scene( "res://scenes/main/main.tscn" )
	print( "Max scene is ", max_slides )
	print( "Current slide is ", current_slide )
	current_slide += 1
	if( current_slide > max_slides ):
		# Changes scene
		get_tree().change_scene( "res://scenes/main/main.tscn" )
	else:
		_change_to_image( slides[current_slide] )

func _change_to_image( in_image_name ):
	var to_change_to = "res://scenes/start_game_cutscenes/private_media/" + in_image_name
	print( "loading ", to_change_to )
	
	set_texture( load( to_change_to ) )
	get_texture().set_flags( to_set_flags )
	print( "Texture's flags are ", get_texture().get_flags() )
	#get_texture().set_flags( 0 )
	
