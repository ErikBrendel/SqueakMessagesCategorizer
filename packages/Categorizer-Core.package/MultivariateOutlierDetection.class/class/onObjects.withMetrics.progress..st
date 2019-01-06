as yet unclassified
onObjects: objectList withMetrics: listOfObjectToMetricConverters progress: progressHandler
	|converted|
	converted := OrderedCollection new.
	1 to: (objectList size) do: [:i |
		converted add: (MultivariateMetricValue newOn: (objectList at: i) andMetricGetters: listOfObjectToMetricConverters).
		progressHandler value: (i / objectList size)].
	^ self onMetricObjects: converted