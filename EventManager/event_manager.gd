extends Node

@export var player : Node

#flags

var fire_extinguisher : bool = false
var candle : bool = false
var air_con : bool = false

var flag_count : int = 0


const FIRE_EXTINGUISHER = preload("res://Friends/FireExtinguisher/FireExtinguisher.tscn")



var player_distance : float = 0.0


func _ready():
	pass


func update_distance(dist):
	player_distance += dist
	


func _on_player_distance_traveled(distance : float):
	player_distance+=distance
	
	if player_distance >= 10 and !fire_extinguisher:
		print("fire_extinguisher spawned")
		spawn_object(FIRE_EXTINGUISHER)
		fire_extinguisher = true
		flag_count += 1
	
	if player_distance >= 75 and flag_count >= 1:
		flag_count += 1
	
	if player_distance >= 100 and flag_count >= 2:
		flag_count += 1
	
	if player_distance >= 150 and flag_count >= 3:
		flag_count += 1
	
	if player_distance >= 200 and flag_count >= 4:
		flag_count += 1
	
	
	


func spawn_object(object : PackedScene):
	var object_instance = object.instantiate()
	
	add_child(object_instance)
	var object_position : Vector3 = Vector3(randi_range(-25,25),0,randi_range(-25,25))
	
	while object_position.distance_to(player.global_position) < 15.0:
		print("position too close to player")
		object_position = Vector3(randi_range(-25,25),0,randi_range(-25,25))
	object_instance.global_position = object_position


func spawn_tree():
	pass
