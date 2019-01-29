tests
uniqueCategorized: aSLMethodTestObject
	<slTestName: 'Unique Categorized' 
	description: 'Tests, whether a given method is categorized in a way it is not done again in the image.'>

	aSLMethodTestObject ifClassTestChildrenWith: #uniqueCategorized:.
	aSLMethodTestObject shouldBeMethod.
	
	^ self successResult: (self uniqueCategorization: aSLMethodTestObject).