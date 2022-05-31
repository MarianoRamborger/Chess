extends Node2D

var current_turn = "player"
onready var board = get_parent()
var summons


func _ready():
	summons = get_node("../Summons")


func start_turn(controller):
	pass #Allows player to play out his turn, or directs pc to take its turn.
	

func move_summons():
	print(summons.get_children())
	for summon in summons.get_children():
		summon.move()


func _process(delta):
	if Input.is_action_just_pressed("TEST"):
		move_summons()
