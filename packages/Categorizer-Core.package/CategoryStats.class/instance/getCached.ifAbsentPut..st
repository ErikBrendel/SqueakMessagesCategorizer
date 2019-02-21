accessing
getCached: cacheKey ifAbsentPut: calculationBlock
	^ self cacheDict
		at: cacheKey
		ifAbsentPut: calculationBlock