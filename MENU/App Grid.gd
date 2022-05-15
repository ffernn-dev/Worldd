extends GridContainer

var is_editor_hint = true

func _draw():
	for position_node in get_tree().get_nodes_in_group("position_nodes"):
		draw_rect(Rect2(position_node.get_position(), position_node.get_size()), Color(0.26, 0.85, 1, 0.65))
