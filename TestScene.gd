extends Node

var test_ct = -1

func _process(_delta) -> void:
  test_ct += 1
  if test_ct >= 1000:
    test_ct = -1
  elif test_ct == 900:
    Debug.update_widget('TextList1.remove_label', { 'name': 'counter' })
  elif test_ct < 900:
    Debug.update_widget('TextList1.add_label', { 'name': 'counter', 'value': str(test_ct) })
