tests
testOutlierCategoriesMultivariate
	"finds outlier categories by multiple different metrics. Opens the outlier-sorted result list at the end."
	"CategorizerMain testOutlierCategoriesMultivariate"
	| cats out result |
	cats := CategorizerCache default allCategories.
	"cats := cats copyFrom: 1 to: 500." "limit to some categories, it would take too long otherwise"
	
	'Fetching Category metrics' displayProgressFrom: 0 to: 1 during: [:bar |
		bar value: 0.
		out := MultivariateOutlierDetection
			onObjects: cats
			withMetrics: {
				[:cat | (CategoryStats newOn: cat) averageMethodLength].
				[:cat | (CategoryStats newOn: cat) numberOfPackages].
				[:cat | (CategoryStats newOn: cat) numberOfClasses].
				[:cat | (CategoryStats newOn: cat) numberOfMethods].
				[:cat | (CategoryStats newOn: cat) numberOfUniqueMethods].
			}
			progress: bar.
	].
	'Analyzing categories' displayProgressFrom: 0 to: 1 during: [:bar |
		bar value: 0.
		result := out findOutliersSorted
	].
		
	"csv export to clipboard"
	Clipboard default clipboardText: 'name;mahalanobisDistance;LOC;packages;classes;methods;uniqueMethods', Character cr,
		(((result collect: [:m | (m metrics as: OrderedCollection) addFirst: m compareValue asString; addFirst: m object; yourself])
			collect: [:data | data reduce: [:accu :next | accu , ';' , next]]) reduce: [:accu :next | accu , Character cr , next]).
			
	Inspector openOn: result