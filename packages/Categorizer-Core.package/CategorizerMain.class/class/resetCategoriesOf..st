initialization
resetCategoriesOf: aClass
	"unclassify all the methods of the given class, for testing the categorization mechanism"
	aClass methodDict keysAndValuesDo: [:k :v | aClass organization classify: k under: Categorizer default suppressIfDefault: false].