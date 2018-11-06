stats
numberOfClasses
	^ self getCached: #numberOfClasses ifAbsentPut: [
		(self methods collect: [:m | m key]) asSet size]