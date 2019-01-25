replacing
replaceObjectsWithSamples: resolution
	"instead of the real objects, we want sample points in the same data range"
	| min max samples counter |
	min := self metricObjects first metrics as: OrderedCollection.
	max := self metricObjects first metrics as: OrderedCollection.
	self metricObjects do: [:o | 1 to: o metrics size do: [:i |
			min at: i put: ((min at: i) min: (o metrics at: i)).
			max at: i put: ((max at: i) max: (o metrics at: i)).
			]].
	samples := OrderedCollection new.
	counter := 0.
	[counter < (resolution ** self metricCount)] whileTrue: [
		samples add: (MultivariateMetricValue newOn: 'sample' andMetrics: (self lerpMin: min max: max at: counter resolution: resolution)).
		counter := counter + 1
		].
	self metricObjects: samples.
	