extends Node2D


signal battler_clicked

var battler

func Setup(_battler, _position):
	battler = _battler
	position = _position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
		and event.button_index == BUTTON_LEFT \
		and event.is_pressed():
			emit_signal("battler_clicked", battler.Key)
