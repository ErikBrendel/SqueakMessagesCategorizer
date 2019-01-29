tests
testOutlierDetection
	"test the outlier detection mechanism: uses several numbers, and their last two digits as metric"
	"CategorizerMain testOutlierDetection"

	|list metric detection|
	
	list := #(152 561 1457 32153 9854 1231). "1231 is the worst outlier, all others have their metric around 50"
	metric := [:x | x \\ 100].

	detection := OutlierDetection onObjects: list withMetric: metric.
	Inspector openOn: detection findOutliersSorted.
	Transcript showln: 'done!'.