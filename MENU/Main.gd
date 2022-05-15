extends Spatial

func _ready():
	var viewport = $Viewport
	var screen = $Phone/Screen
	var screen2 = $Phone2/Screen

	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")

	# Retrieve the texture and set it to the viewport quad.
	var screen_mesh = screen.get_mesh()
	screen_mesh.get("surface_1/material").set_texture(SpatialMaterial.TEXTURE_EMISSION, viewport.get_texture())
	screen_mesh.get("surface_1/material").get_texture(SpatialMaterial.TEXTURE_EMISSION).set_flags(76)
	#screen_mesh.get("surface_1/material").set_texture(SpatialMaterial.TEXTURE_ALBEDO, viewport.get_texture())
	var screen_material = screen_mesh.get("surface_1/material")
	
	var screen_mesh2 = screen2.get_mesh()
	screen_mesh2.get("surface_1/material").set_texture(SpatialMaterial.TEXTURE_EMISSION, viewport.get_texture())
	screen_mesh2.get("surface_1/material").get_texture(SpatialMaterial.TEXTURE_EMISSION).set_flags(76)
	screen_mesh2.get("surface_1/material").set_texture(SpatialMaterial.TEXTURE_ALBEDO, viewport.get_texture())
	var screen_material2 = screen_mesh2.get("surface_1/material")
