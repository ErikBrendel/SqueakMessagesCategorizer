tests
weirdCategorized: aSLMethodTestObject
	<slTestName: 'Weird Categorized' 
	description: 'Tests, whether a given method is categorized differently than it is at most other places in the image.'>

	aSLMethodTestObject ifClassTestChildrenWith: #weirdCategorized:.
	aSLMethodTestObject shouldBeMethod.
	
	^ self successResult: (self classificationFactorOf: aSLMethodTestObject) < 0.3.