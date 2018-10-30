as yet unclassified
newOn: object andMetricGetter: objectToMetricConverter
	
	 ^ self newOn: object andMetric: (objectToMetricConverter value: object)