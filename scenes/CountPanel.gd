extends Panel

func _ready():
	CustomGlobals.stuff()
	PubSub.subcribe("count_changed", self)
	get_node("CountLabel").text = str("Count is: ", get_node("/root/CustomGlobals").count)

func _on_IncreaseButton_button_up():
	PubSub.publish("count_increase")

func _on_DecreaseButton_button_up():
	PubSub.publish("count_decrease")
	
func event_published(key):
	if(key == "count_changed"):
		get_node("CountLabel").text = str("Count is: ", get_node("/root/CustomGlobals").count)
