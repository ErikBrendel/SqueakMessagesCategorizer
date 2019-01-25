as yet unclassified
testOutlierCategoriesMultivariateVisual
	"
	CategorizerMain testOutlierCategoriesMultivariateVisual
	"
	| cats out result r rv |
	r := Random new.
	rv := [(r next - 0.5) * 0.1].
	cats := CategorizerCache default allCategories.
	"cats := cats copyFrom: 1 to: 500." "limit to some categories, it would take too long otherwise"
	
	'Fetching Category metrics' displayProgressFrom: 0 to: 1 during: [:bar |
		bar value: 0.
		out := MultivariateOutlierDetection
			onObjects: cats
			withMetrics: {
				"[:cat | (CategoryStats newOn: cat) averageMethodLength].
				[:cat | (CategoryStats newOn: cat) numberOfPackages]."
				[:cat | (CategoryStats newOn: cat) numberOfClasses].
				[:cat | (CategoryStats newOn: cat) numberOfMethods].
				"[:cat | (CategoryStats newOn: cat) numberOfUniqueMethods]."
			}
			progress: bar.
	].
	'Analyzing categories' displayProgressFrom: 0 to: 1 during: [:bar |
		bar value: 0.
		result := out findOutliersSorted
	].
		
	"csv export"
	('name;mahalanobisDistance;classes;methods', Character cr,
		(((result reversed collect: [:m | ((m metrics as: OrderedCollection) collect: [:n | (n + 1) log + rv value]) addFirst: m compareValue asString; addFirst: m object; yourself])
			collect: [:data | data reduce: [:accu :next | accu , ';' , next]]) reduce: [:accu :next | accu , Character cr , next])) edit.
	

	('name;mahalanobisDistance;classes;methods', Character cr,
		((((out visualizeDistances: 100) reversed collect: [:m | ((m metrics as: OrderedCollection) collect: [:n | (n + 1) log]) addFirst: (m compareValue \\ 10) asString; addFirst: m object; yourself])
			collect: [:data | data reduce: [:accu :next | accu , ';' , next]]) reduce: [:accu :next | accu , Character cr , next])) edit.