categorization
if: histogram isGoodFor: methodName do: resultHandler
	(self histogramIsBigEnough: histogram) ifFalse: [^ self].
	
	(self histogramHasUniqueBest: histogram) ifTrue: [resultHandler value: histogram first key. ^ self].
	
	resultHandler value: (UIManager default
		chooseFromOrAddTo: (histogram collect: [:a | a key asString])
		lines: {}
		title: 'Select a category for "' , methodName asString , '"')