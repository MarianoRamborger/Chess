extends Node2D

onready var tile = load("res://Match/Board/Tiles/Tile.tscn")


func _ready():
	create_board()



func create_board():
	var coords = Vector2(0,9)
	var colored = false
	var xPos = 0
	var yPos = -64
	for column in range(0,8):
		coords.y -=1
		coords.x = 1
		colored = !colored
		yPos += 64
		xPos = 0
		for row in range(0,8):
			var newTile = tile.instance()
			newTile.position = Vector2(xPos,yPos)
			print(coords)
			newTile.coords = coords
			if colored:
				newTile.color = "ff5400"
				colored = false
			else:
				colored = true
			newTile.colorize()
			$Tiles.add_child(newTile)
			xPos += 64
			coords.x += 1




