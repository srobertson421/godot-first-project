extends Panel

onready var Count = $"/root/Count"

func _ready():
	updateCount()
	Count.subscribe(
		get_instance_id(),
		funcref(self, "updateCount")
	)

func updateCount():
	get_node("CountLabel").text = str("Count is: ", Count.count)

func _on_IncreaseButton_button_up():
	Count.dispatch("increase_count")

func _on_DecreaseButton_button_up():
	Count.dispatch("decrease_count")
