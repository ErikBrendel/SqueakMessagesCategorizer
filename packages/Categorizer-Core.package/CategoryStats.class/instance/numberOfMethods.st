stats
numberOfMethods
	^ self getCached: #numberOfMethods ifAbsentPut: [
		self methods size]