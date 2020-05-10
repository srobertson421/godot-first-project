extends Node

var count: = 0 setget set_count, get_count

var _subscriptions = {}

func subscribe(key, funcRef):
	_subscriptions[key] = funcRef

func set_count(newCount):
	count = newCount
	for key in _subscriptions:
		_subscriptions[key].call_func()

func get_count():
	return count
