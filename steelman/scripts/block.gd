extends Area3D
signal tekst_visib

func _on_body_entered(body: Node3D) -> void:
	tekst_visib.emit()


func _on_body_exited(body: Node3D) -> void:
	tekst_visib.emit()
