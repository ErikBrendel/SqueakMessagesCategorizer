as yet unclassified
onObjects: objectList withMetrics: listOfObjectToMetricConverters

	^ self onMetricObjects: (objectList collect: [:object | MultivariateMetricValue newOn: object andMetricGetters: listOfObjectToMetricConverters])