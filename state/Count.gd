extends "res://state/BaseState.gd"

var count: = 0

func _init():
	events = {
		"increase_count": funcref(self, "increase_count"),
		"decrease_count": funcref(self, "decrease_count")
	}

func set_count(newCount):
	count = newCount
	for key in _subscriptions:
		_subscriptions[key].call_func()
	
func increase_count():
	set_count(count + 1)

func decrease_count():
	set_count(count - 1)
