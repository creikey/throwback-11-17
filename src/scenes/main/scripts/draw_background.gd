extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var background_sprite = Image()
export var background_color = Color()

var to_draw
var is_sprite = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	if( background_sprite.empty() == false ):
		to_draw = ImageTexture.new()
		to_draw.create_from_image( background_sprite )
		is_sprite = true

func _draw():
	if( is_sprite ):
		draw_texture( to_draw, Vector2() )
	else:
		draw_rect( Rect2( Vector2(), OS.get_window_size() ), background_color )