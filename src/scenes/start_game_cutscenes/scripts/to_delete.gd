extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var current_slide = 0
#export var slides = [Image(), Image(), Image(), Image(), Image(), Image(), Image()]
export var slides = [Image()]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#slides[0].load("res://scenes/start_game_cutscenes/private_media/panel_1.png")
	pass

func next_slide():
	current_slide += 1

func display_slide( slides, slide_number ):
	var to_draw = ImageTexture.new()
	to_draw.create_from_image( slides[slide_number] )
	add_child( to_draw )
	draw_texture( to_draw, Vector2() )

func _draw():
	print( "Adding child" )
	display_slide( slides, current_slide )