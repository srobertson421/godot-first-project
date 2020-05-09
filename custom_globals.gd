extends Node

var count = 0;

func stuff():
	print("stuff")

func _ready():
	PubSub.subscribe("count_increase", self)
	PubSub.subscribe("count_decrease", self)

func event_published(event_key):
	print("global event listener", event_key)
	if event_key == 'count_increase':
		count += 1
		PubSub.publish("count_changed", count)
	if event_key == 'count_decrease':
		count -= 1
		PubSub.publish("count_changed", count)
