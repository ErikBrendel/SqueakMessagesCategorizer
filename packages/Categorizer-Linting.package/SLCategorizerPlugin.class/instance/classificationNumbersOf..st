helper
classificationNumbersOf: aSLMethodTestObject
	| category hist hitCount missCount |
	category := self categoryOf: aSLMethodTestObject.
	hist := CategorizerCache default categoryHistogramOf: aSLMethodTestObject methodSelector.
	hitCount := 0.
	missCount := 0.
	hist do: [:catAndCount | 
		(catAndCount key = category)
			ifTrue: [hitCount := hitCount + catAndCount value]
			ifFalse: [missCount := missCount + catAndCount value]].
	^ hitCount -> missCount.