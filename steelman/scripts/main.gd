extends Node3D

var i=0;
var nearVlada= false;

func _ready() -> void:
	var block_enter=$TestGuy/Area3D;
	block_enter.tekst_visib.connect(_on_tekst_visib)

func _on_tekst_visib() -> void:

	$tekst.visible = not $tekst.visible
	nearVlada = not nearVlada
	
func _input(event):
	
	var text1:= ["You are the new guy right?",
	"Nice to meet you!",
	"Grab your helmet and let's go"];

	if event.is_action_pressed("interact") and nearVlada==true:
		if i < text1.size():
			$tekst.text=text1[i];
			i+=1;
		else:
			i=text1.size()-1;
			$tekst.text=text1[i];
