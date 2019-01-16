tests
categoryOf: aSLMethodTestObject
	|class|
	class := aSLMethodTestObject parent testClass.
	aSLMethodTestObject classSide
		ifTrue: [class := class class].
	^ class organization categoryOfElement: aSLMethodTestObject methodSelector.