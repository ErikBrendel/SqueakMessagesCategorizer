*Categorizer-Core
scaleRow: row by: factor
	self atRow: row put: ((self atRow: row) collect: [:val | val * factor])