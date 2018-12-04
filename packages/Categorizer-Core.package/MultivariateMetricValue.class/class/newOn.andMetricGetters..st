as yet unclassified
newOn: object andMetricGetters: listOfObjectToMetricConverters
	"taking an objects and a list of blocks that generate a metric when giving them this object"
	 ^ self
		newOn: object
		andMetrics: (listOfObjectToMetricConverters collect: [:metricGetter | metricGetter value: object])