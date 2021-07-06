extends CanvasLayer


var show_debug_interface = false


onready var _uiContainer = $DebugUIContainer


func _ready():
  _set_ui_container_visibility(show_debug_interface)


func _input(_event):
  if Input.is_action_just_pressed('toggle_debug_interface'):
    show_debug_interface = !show_debug_interface
    _set_ui_container_visibility(show_debug_interface)


func _set_ui_container_visibility(boolean):
  _uiContainer.visible = boolean
