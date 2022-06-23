extends Node

var dice=1
var dice2=1
var overall=0
var odd=""

func _ready():
	var test=load("res://pseudo.gdns").new()
	test.getseed();
	$Buttons/Reveal.disabled=true
	#############################$Sounds/Background.play()
	dice=test.getoutput()
	$Dices/Dice.frame=dice
	dice2=test.getoutput()
	$Dices/Dice2.frame=dice2
	
func _on_Roll_pressed():
	var test=load("res://pseudo.gdns").new()
	$Sounds/Roll.play()
	dice=test.getoutput()
	$Dices/Dice.frame=dice
	dice2=test.getoutput()
	$Dices/Dice2.frame=dice2
	overall=dice+dice2+2
	$Output/Overall.text=str(overall)
	$Buttons/Roll.disabled=true
	Odd()
	$Dices/Dice.visible=false
	$Dices/Dice2.visible=false
	$Output/Odd.visible=false
	$Output/Overall.visible=false
	$Buttons/Reveal.disabled=false
	
func Odd():
	if overall%2==0:
		odd="Even"
	else:
		odd="Odd"
	$Output/Odd.text=str(odd)
	
func _on_Reveal_pressed():
	$Sounds/Reveal.play()
	$Dices/Dice.visible=true
	$Dices/Dice2.visible=true
	$Output/Odd.visible=true
	$Output/Overall.visible=true
	$Buttons/Reveal.disabled=true
	$Buttons/Roll.disabled=false
