private
outlierFactor: aMetricValue
	"the range of the two bounds is a relative 1, their center is the zero point.
	This method returns the relative absolute value of a metric in this new space"
	|one zero|
	one := upperBound - lowerBound.
	zero := (upperBound + lowerBound) / 2.
	^ ((aMetricValue metric - zero) / one) abs