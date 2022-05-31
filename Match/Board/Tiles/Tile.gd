extends Node2D


var color = '000000'
var coords

func _ready():
	pass
	
func colorize():
	$Tile_Area/ColorRect.color = color




func _on_Tile_Area_mouse_entered():
	print("Entering" + str(coords))
	$Tile_Area/ReferenceRect.visible = true



func _on_Tile_Area_mouse_exited():
	$Tile_Area/ReferenceRect.visible = false
