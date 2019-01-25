private
calculateCovarianceMatrix: mean
	^ Matrix new: self metricCount tabulate: [:a :b | |mean_a mean_b|
			mean_a := mean at: a.
			mean_b := mean at: b.
			(self metricObjects collect: [:m | (mean_a - m metrics at: a) * (mean_b - m metrics at: b)]) average]