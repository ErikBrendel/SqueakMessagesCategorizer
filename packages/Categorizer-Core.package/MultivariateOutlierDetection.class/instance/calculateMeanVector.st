private
calculateMeanVector
	|mean data|
	mean := OrderedCollection new.
	data := self metricObjects collect: [:o | o metrics as: OrderedCollection].
	self metricCount timesRepeat: [
		mean add: (data collect: [:m | m removeFirst]) average.
		].
	^ mean