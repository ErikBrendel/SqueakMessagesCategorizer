initialization
resetCategoriesOf: aClass
	aClass methodDict keysAndValuesDo: [:k :v | aClass organization classify: k under: Categorizer default suppressIfDefault: false].