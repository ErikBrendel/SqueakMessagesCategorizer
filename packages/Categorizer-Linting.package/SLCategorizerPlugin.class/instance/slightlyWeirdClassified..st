tests
slightlyWeirdClassified: aSLMethodTestObject
	<slTestName: 'Slightly Weird Classification' 
	description: 'Tests, whether a given method is categorized slightly differently than it is at most other places in the image.'>

	aSLMethodTestObject ifClassTestChildrenWith: #weirdClassified:.
	aSLMethodTestObject shouldBeMethod.
	
	
	^ self successResult: (self classificationFactorOf: aSLMethodTestObject) < 0.6.