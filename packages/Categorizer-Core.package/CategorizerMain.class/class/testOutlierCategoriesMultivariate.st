as yet unclassified
testOutlierCategoriesMultivariate
	| cats out |
	cats := CategorizerCache default allCategories.
	cats := cats copyFrom: 1 to: 500. "limit to some categories, it would take too long otherwise"
	
	out := MultivariateOutlierDetection
		onObjects: cats
		withMetrics: {
			[:cat | (CategoryStats newOn: cat) averageMethodLength].
			[:cat | (CategoryStats newOn: cat) numberOfPackages].
			[:cat | (CategoryStats newOn: cat) numberOfClasses].
			[:cat | (CategoryStats newOn: cat) numberOfMethods].
			[:cat | (CategoryStats newOn: cat) numberOfUniqueMethods].
		}.
		
	Inspector openOn: out findOutliersSorted