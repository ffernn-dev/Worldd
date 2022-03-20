extends RichTextLabel

func _process(_delta):
	self.text = str(OS.get_time()["hour"]) + ":" + str(OS.get_time()["minute"])
