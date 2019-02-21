mahalanobis visualization
visualizeDistances: resolution
	"instead of the original data, uniformly distributed sample data points get outlier-filtered, but by the mean and cov values of the original data. The sample points can thus be used to visualize the mahalanobis distance filed of the original data"
	|mean cov|
	mean := self calculateMeanVector.
	cov := self calculateCovarianceMatrix: mean.
	self replaceObjectsWithSamples: resolution.
	self calculateDistancesFrom: mean with: cov inverted.
	self metricObjects sort: [:a :b | b <= a].
	^ self metricObjects