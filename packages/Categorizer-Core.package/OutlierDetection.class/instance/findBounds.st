private
findBounds
	"metricValues should be sorted by their metric"
	"bounds are inclusive"
	|boundsOutside|
	boundsOutside := self metricObjects size / 10.
	boundsOutside := boundsOutside max: 1.
	lowerBound := (self metricObjects at: boundsOutside + 1) metric.
	upperBound := (self metricObjects at: self metricObjects size - boundsOutside) metric.
	
	
	