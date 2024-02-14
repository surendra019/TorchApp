extends Control

var torch

func _ready():
	if Engine.has_singleton("Torch"):
		torch = Engine.get_singleton("Torch")
		

func _on_toggleBtn_toggled(button_pressed):
	if button_pressed:
		$toggleBtn.text = "OFF"
		torch.switchFlashLight(true)
	else:
		$toggleBtn.text = "ON"
		torch.switchFlashLight(false)
	pass # Replace with function body.
