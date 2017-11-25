extends SamplePlayer2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	play( "intro_music" )


func _on_next_slide_button_pressed():
	play( "button_click" )
