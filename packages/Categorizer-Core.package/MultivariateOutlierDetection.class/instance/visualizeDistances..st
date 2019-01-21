as yet unclassified
visualizeDistances: resolution
	|mean cov|
	mean := self calculateMeanVector.
	cov := (self calculateCovarianceMatrix: mean).
	self replaceObjectsWithSamples: resolution.
	self calculateDistancesFrom: mean with: cov inverted.
	self metricObjects sort: [:a :b | b <= a].
	^ self metricObjects