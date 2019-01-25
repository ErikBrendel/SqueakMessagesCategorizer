accessing
findOutliersSorted
	"mahalanobis distance outlier detection: return the metric objects
	sorted descending by their weighted distance from the center of the given data set"
	|mean cov|
	mean := self calculateMeanVector.
	cov := (self calculateCovarianceMatrix: mean).
	self calculateDistancesFrom: mean with: cov inverted.
	self metricObjects sort: [:a :b | b <= a].
	^ self metricObjects