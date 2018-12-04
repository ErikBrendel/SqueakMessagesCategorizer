*Categorizer-Core
allMethodsInCategoryWithoutSuperclasses: aName 
	"Answer a list of all the method categories of the receiver"
	^ (aName = ClassOrganizer allCategory
		ifTrue: [self organization allMethodSelectors]
		ifFalse: [self organization listAtCategoryNamed: aName]) asSet sorted.

	"TileMorph allMethodsInCategoryWithoutSuperclasses: #initialization"