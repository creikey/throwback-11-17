extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var text_numb = 0
var text_numb_max = 4
export var text = StringArray()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	redraw_text( text_numb, text )
	pass


func _on_next_slide_button_pressed():
	text_numb += 1
	if( text_numb > text_numb_max ):
		pass
	else:
		redraw_text( text_numb, text )

func redraw_text( in_numb, arr ):
	if( arr.size() < in_numb ):
		set_text( "string is NULL" )
	else:
		set_text( arr[in_numb] )
