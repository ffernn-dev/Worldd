extends VBoxContainer

export(String) var icon_name = "Settings"
export(String) var app_name = "App Name"

func _ready():
	$Icon.texture = load("res://MENU/Media/" + icon_name + ".png")
	var truncated_name = app_name.substr(0, 16)
	$Name.text = (truncated_name + "…" if truncated_name != app_name else truncated_name)
