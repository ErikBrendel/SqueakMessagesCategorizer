tests
newCategoryInvention: aSLMethodTestObject
	<slTestName: 'New Category Invention' 
	description: 'Tests, whether a given method is categorized under a category that only exists in this one class.'>

	aSLMethodTestObject ifClassTestChildrenWith: #newCategoryInvention:.
	aSLMethodTestObject shouldBeMethod.
	
	^ self successResult: ((CategoryStats newOn: (self categoryOf: aSLMethodTestObject)) numberOfClasses <= 1).