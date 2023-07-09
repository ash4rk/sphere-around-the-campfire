extends Button

func _on_pressed():
	_shuffleParentChildren()

func _shuffleParentChildren():
	randomize()
	var parent = get_parent()
	var indices = _generateArray(parent.get_child_count())
	indices.shuffle()
	
	for i in indices.size():
		var child = parent.get_child(i)
		parent.move_child(child, indices[i])

func _generateArray(n: int) -> Array:
	var array = []
	for i in range(1, n + 1):
		array.append(i)
	return array
