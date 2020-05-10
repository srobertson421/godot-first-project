extends Panel

func _ready():
	updateCount()
	CustomGlobals.subscribe(self.get_instance_id(), funcref(self, "updateCount"))

func updateCount():
	get_node("CountLabel").text = str("Count is: ", CustomGlobals.count)

func _on_IncreaseButton_button_up():
	EventBus.dispatch("increase_count")

func _on_DecreaseButton_button_up():
	EventBus.dispatch("decrease_count")
