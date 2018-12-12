as yet unclassified
testOutlierPointsMultivariate
	|out data|
	data := {
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
	Clipboard default clipboardText: 'mahalanobisDistance;x;y', Character cr, (((out findOutliersSorted collect: [:m | (m metrics as: OrderedCollection) addFirst: m compareValue asString; yourself]) collect: [:d | d reduce: [:accu :next | accu , ';' , next]]) reduce: [:accu :next | accu , Character cr , next])