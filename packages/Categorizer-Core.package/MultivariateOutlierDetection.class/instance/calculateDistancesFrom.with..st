private
calculateDistancesFrom: center with: covarianceInverse
	"give all these metric objects a their Mahalanobis-Distance to the center point as compare value"
	self metricObjects do: [:o | o compareValue:
		(self mahalanobisDistanceBetween: center and: (o metrics) using: covarianceInverse)]