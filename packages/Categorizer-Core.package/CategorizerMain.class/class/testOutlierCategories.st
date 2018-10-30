as yet unclassified
testOutlierCategories
	"applies the 'number of methods in it' metric onto method categories"
	"uses outlier detection to show the list of categories sorted by how outliery they are"
	"(thus showing categories with very many or very few methods on top, average ones at bottom)"
	"CategorizerMain testOutlierCategories"
	| cats |
	cats := Set new.
	SystemNavigation default allBehaviorsDo: [:beh | beh methodDict valuesDo: [:method |
		cats add: method methodReference category]].
	cats := cats select: [:cat | cat asString first ~= $*].
	cats := OrderedCollection newFrom: cats.
	cats := cats copyFrom: 1 to: 100. "limit to some categories, it would take too long otherwise"
	Inspector openOn: (OutlierDetection
		onObjects: cats
		withMetric: [:cat | (SystemNavigation default allMethodsInCategory: cat asString) size]) findOutliersSorted