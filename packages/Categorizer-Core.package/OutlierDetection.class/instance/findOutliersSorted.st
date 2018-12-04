as yet unclassified
findOutliersSorted
	
	"sort by metric to find the bounds"
	self metricObjects sort.
	"self findBounds.
	self metricObjects sort: [:a :b | (self outlierFactor: a) >= (self outlierFactor: b)]."
	^ self metricObjects
	