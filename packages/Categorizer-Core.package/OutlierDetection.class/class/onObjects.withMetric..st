as yet unclassified
onObjects: objectList withMetric: objectToMetricConverter

	^ self onMetricObjects: (objectList collect: [:object | MetricValue newOn: object andMetricGetter: objectToMetricConverter])