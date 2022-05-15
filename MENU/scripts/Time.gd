extends Label

func _process(_delta):
	#self.text = str(OS.get_time()["hour"]) + ":" + str(OS.get_time()["minute"])
	self.text = str("%02d:%02d" % [OS.get_time().hour, OS.get_time().minute])
