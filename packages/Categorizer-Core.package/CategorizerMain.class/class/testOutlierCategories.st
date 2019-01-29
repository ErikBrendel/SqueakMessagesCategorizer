tests
testOutlierCategories
	"applies the 'averageMethodLength' metric onto method categories"
	"uses outlier detection to show the list of categories sorted by how outliery they are"
	"(thus showing categories with very short or very long methods on top, average ones at bottom)"
	"CategorizerMain testOutlierCategories"
	| cats |
	cats := CategorizerCache default allCategories.
	cats := cats copyFrom: 1 to: 500. "limit to some categories, it would take too long otherwise"
	Inspector openOn: (OutlierDetection
		onObjects: cats
		withMetric: [:cat | (CategoryStats newOn: cat) averageMethodLength]) findOutliersSorted