extends Node

var _subscriptions = {}
var events = {}

func subscribe(key, funcRef):
	_subscriptions[key] = funcRef
	
func dispatch(event_type):
	events[event_type].call_func()
