as yet unclassified
resetCategoryOf: aClass
	aClass methodDict keysAndValuesDo: [:k :v | aClass organizer classify: k under: Categorizer default suppressIfDefault: false].