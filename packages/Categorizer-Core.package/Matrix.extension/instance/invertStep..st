*Categorizer-Core
invertStep: i
	"a step of the gauss-jordan - inverting algorithm.
	After this method, self[i, i] = 1 and all other cells with the same x are 0.
	The right half of me is updated accordingly.
	Two steps are done: First, self[i, i] gets scaled to be 1, then it gets added onto the other rows to make them 0."
	|pivotValue|
	pivotValue := self at: i at: i.
	(pivotValue ~= 1) ifTrue: [self scaleRow: i by: (1 / pivotValue)].
	(1 to: nrows) do: [:row | 
		(row ~= i) ifTrue: [ |factor|
			factor := (self at: row at: i) negated.
			self addRow: i to: row by: factor]].
	^ self.