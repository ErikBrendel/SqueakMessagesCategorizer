tests
weirdClassified: aSLMethodTestObject
	<slTestName: 'Weird Classification' 
	description: 'Tests, whether a given method is categorized differently than it is at most other places in the image.'>

	aSLMethodTestObject ifClassTestChildrenWith: #weirdClassified:.
	aSLMethodTestObject shouldBeMethod.
	
	^ self successResult: (self classificationFactorOf: aSLMethodTestObject) < 0.3.