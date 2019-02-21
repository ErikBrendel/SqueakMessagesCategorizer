mahalanobis visualization
lerpMin: min max: max at: counter resolution: resolution
	"some fancy interpolation in multivariate space"
	| integer next result |
	
	result := min copy.
	integer := counter.
	(min size) to: 1 by: -1 do: [:i | | factor mini maxi rangei |
		mini := min at: i.
		maxi := max at: i.
		rangei := maxi - mini.
		next := integer // resolution.
		factor := (integer \\ resolution) / (resolution - 1).
		result at: i put: ((10 ** ((mini + 1) log + (factor * ((maxi + 1) log - (mini + 1) log)))) - 1).
		integer := next].
	^ result