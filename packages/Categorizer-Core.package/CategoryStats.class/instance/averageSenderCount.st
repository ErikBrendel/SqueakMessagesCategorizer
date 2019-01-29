stats
averageSenderCount
	^ self getCached: #averageSenderCount ifAbsentPut: [
		(self methods collect: [:m | (SystemNavigation default
			allCallsOn: m value
			fromBehaviors: SystemNavigation default allBehaviors
			sorted: false) size]
		)average roundTo: 0.01]