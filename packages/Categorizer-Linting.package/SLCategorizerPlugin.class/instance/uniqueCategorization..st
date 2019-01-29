helper
uniqueCategorization: aSLMethodTestObject
	| data hitCount missCount |
	data := self classificationNumbersOf: aSLMethodTestObject.
	hitCount := data key.
	missCount := data value.
	
	^ (hitCount = 1) and: [missCount > 0]