class_name Character

extends Node3D

var health = 40
var lol := 15 # ne mozes redeklarisati
@export var lel :=20 # ovo mozes da menjas u Node settings sa leve strane

enum alig {ALLY=1, NEUTRAL=11, ENEMY=111}
@export var unit_alig:alig

signal lvl_up

var chast:= Equipment.new()
var legs:= Equipment.new()

class Equipment:
	var armor:=12343242
	var weigth:=5213231
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("da")
	#$Label3D.text="Test za boje da DA BICE LEPO DAA"
	#$Label3D.modulate=Color.GREEN
	chast.armor=20333333
	print(chast.armor)
	# Basic Function
	var res = add(2,3)
	print(res)
	
	#Array
	var items: Array[String]=["ja","ti","midada"]

	items.remove_at(1)
	print(items[1])
	items.append("lol")
	
	# For Loop
	for item in items:
		if item.length()<3:
			print(item)
			
	for n in 2:
		print("lel")
	
	# While Loop
	var glass:=0.0
	while glass <0.5:
		glass+=randf_range(0.01,0.2)
		if glass >0.2:
			print("glass is half full man")
			break	
		print(glass)
	
	# Dictionary
	var dicks = {
		"Crook":1,
		"villan":45,
		"fefef":13,
		}
		
	for username in dicks:
		print(username + ":" + str(dicks[username]))
		
	var dicks2={
		"da": {"level": 1, "hp": 30},
		"dada": {"level": 5, "hp": 320},
		"dadada": {"level": 2, "hp": 310},
	}
	print(dicks2["dada"]["level"])
	
	# ENUM
	if unit_alig != alig.ENEMY:
		print("pogledas unit")
		print(alig.ENEMY)
	match alig:
		alig.ALLY:
			print("da")
		alig.NEUTRAL:
			print("ADAD")
			
		
func _input(event):
	# TESTING
	if event.is_action_pressed("testA"):
		#$Label3D.modulate=Color.RED
		lvl_up.emit()
		null
	if event.is_action_released("testA"):
		#$Label3D.modulate=Color.GREEN
		null
	if event.is_action_pressed("testA"):
		health-=10
		print(health)
		if health <=0:
			print("dead")
		elif health < 30:
			print("inqured")
			
func add(num1,num2):

	var res=num1+num2
	return(res)


func _on_lvl_up() -> void:
	print("signaaaaaaaaaal radi")
