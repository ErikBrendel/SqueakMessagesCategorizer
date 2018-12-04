stats
averageMethodLength
	^ self getCached: #averageMethodLength ifAbsentPut: [
		(self methods collect: [:m | ((m key sourceCodeAt: m value)
			asString select: [:c | c = Character cr]) size + 1]) average roundTo: 0.01]