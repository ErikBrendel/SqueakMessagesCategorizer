tests
testOutlierPointsMultivariate
	"testing the multivariate outlier detection on abstract data. the points x and y coordinates are the two metrics."
	|out data|
	data := { "all these points are roughly on a diagonal with an ascend of 0.5"
		1@2.0.
		2@2.0.
		3@3.5.
		4@3.5.
		5@3.5.
		3.5@5.25.
		6@4.5.
		7@4.0.
		8@5.5.
		9@6.0.
		5.5@3.2.
		2.5@3.
		7.5@4.75.
	}.
	"wolframAlpha formatting:"
	Transcript showln: ((data collect: [:p | '(' , p x , ',' , p y , ')']) reduce: [:a :n | a , ',' , n]).
	out := MultivariateOutlierDetection
		onObjects: data
		withMetrics: {
			[:p | p x].
			[:p | p y]
		}.
	"csv export to clipboard"
	Clipboard default clipboardText: 'mahalanobisDistance;x;y', Character cr, (((out findOutliersSorted collect: [:m | (m metrics as: OrderedCollection) addFirst: m compareValue asString; yourself]) collect: [:d | d reduce: [:accu :next | accu , ';' , next]]) reduce: [:accu :next | accu , Character cr , next])