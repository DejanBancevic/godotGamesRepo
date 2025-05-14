extends Node3D

signal helmet_pickup


func _ready():
	$"../AnimationPlayer".play("float")

func _on_body_entered(body: Node3D) -> void:
	helmet_pickup.emit()
