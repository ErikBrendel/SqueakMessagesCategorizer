stats
numberOfUniqueMethods
	^ self getCached: #numberOfUniqueMethods ifAbsentPut: [
		(self methods collect: [:m | m value]) asSet size]