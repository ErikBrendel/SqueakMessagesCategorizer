*Categorizer-Core
addRow: row to: target by: factor
	|toAdd|
	toAdd := (self atRow: row) as: OrderedCollection.
	self atRow: target put: ((self atRow: target) collect: [:val | val + (toAdd removeFirst * factor)])