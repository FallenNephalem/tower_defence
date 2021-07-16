extends Path2D

var enemy = 0
export var enemy_count = 5
var timer = 0
export var SpawnTime = 3

var follower = preload("res://plane.tscn")

func _process(delta):
	timer = timer + delta
	if (enemy >= enemy_count):
		return
	if (timer > SpawnTime):
		var newFollower = follower.instance()
		add_child(newFollower)
		timer = 0
		enemy = enemy + 1
