@tool
extends Parallax2D

@export var is_active :bool = false

func _process(delta: float) -> void:
	if is_active and Engine.is_editor_hint():
		screen_offset.x = -get_viewport().global_canvas_transform.get_origin().x
		screen_offset.y = -get_viewport().global_canvas_transform.get_origin().y
		
		#screen_offset = get_viewport().global_canvas_transform.x
		#screen_offset.y = get_viewport().global_canvas_transform.x.y
		#screen_offset.x = get_viewport().global_canvas_transform.x.x
