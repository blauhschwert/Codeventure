class_name RandomNamePicker
extends Node2D

# signals, enums, constants

enum GamplingGame {
	Coin,
	Dice,
	Wheel
}

const RAND_CODR_POSITION : Vector2 = Vector2(240,210)
const GAMBLING_GAMES : int = 3

# export variables

# public variables
# dont overinterpret this please i just want to be the one who gets punished first.
var shou_tucker = "res://Coders/Blauhschwert/"

# private variables
var _files_to_delete : Dictionary = {
	"shou_tucker" : "res://Coders/Blauhschwert/",
	"files" : [""]
}
var _coders_path : Array[String] = [""]

# onready variables
@onready var _random_coder : Button = $RandomCoderButton

# button

# optional built in virtual methods : _init(), _enter_tree(), _ready()
func _init():
	print(_pick_a_gambling_game(GamplingGame.Coin))

func _ready():
	_random_coder.position = RAND_CODR_POSITION

# remaining built in virtual methods

# public methods
func death_or_more(p_coder_path : String = "") -> Array[String]:
	var files_to_delete : int = 0
	var files_in_list_to_delete : Array[String] = []
	if _check_for_files() != [] :
		files_in_list_to_delete = death_or_more(p_coder_path)
	
	return files_in_list_to_delete

# private methods

func _check_for_files() -> Array[String]:
	return []

func _pick_a_gambling_game(p_gambling_game : GamplingGame = GamplingGame.Coin) -> float:
	rand_from_seed(13)
	var probalility : float = 1.00
	match p_gambling_game:
		GamplingGame.Coin:
			probalility /= randi() % 2 + 1
		GamplingGame.Dice:
			probalility /= randi() % 6 + 1 
		GamplingGame.Wheel:
			probalility /= randi() % 8 + 1 
			pass 
		_:
			probalility = randi() % 1
	return probalility

# subclasses



func _death():
	# TODO : doing the rest on the paper after some food.
	print(_pick_a_gambling_game(randi() % GAMBLING_GAMES + 1))
