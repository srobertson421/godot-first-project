extends Node

func increase_count():
	CustomGlobals.count += 1

func decrease_count():
	CustomGlobals.count -= 1

var events: = {
	"increase_count": funcref(self, "increase_count"),
	"decrease_count": funcref(self, "decrease_count")
}

func dispatch(event_type):
	events[event_type].call_func()
