extends Node2D

export var controller = "Player"
export var speed = 1
export var attack = 1

func move():
	position.y -= speed * 64
