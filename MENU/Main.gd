extends Spatial

func _ready():
	var viewport = $Viewport
	var screen = $Phone/Screen

	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")

	# Retrieve the texture and set it to the viewport quad.
	var screen_mesh = screen.get_mesh()
	screen_mesh.get("surface_1/material").set_texture(SpatialMaterial.TEXTURE_EMISSION, viewport.get_texture())
	var screen_material = screen_mesh.get("surface_1/material")
