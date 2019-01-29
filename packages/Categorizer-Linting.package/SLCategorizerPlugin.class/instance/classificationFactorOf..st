helper
classificationFactorOf: aSLMethodTestObject
	| data hitCount missCount |
	data := self classificationNumbersOf: aSLMethodTestObject.
	hitCount := data key.
	missCount := data value.
	
	(hitCount = 0) ifTrue: [^ 0].
	(missCount = 0) ifTrue: [^ 1].
	^ hitCount / (hitCount + missCount)