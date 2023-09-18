class_name RandomNamePicker
extends Node

# signals, enums, constants

enum GamplingGame {
	Coin,
	Dice,
	Wheel
}


# export variables

# public variables

# private variables

# onready variables

# optional built in virtual methods : _init(), _enter_tree(), _ready()
func _init():
	print(pick_a_gambling_game(GamplingGame.Coin))

# remaining built in virtual methods

# public methods

# private methods

func pick_a_gambling_game(p_gambling_game = GamplingGame.Coin) -> float:
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

