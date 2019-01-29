stats
commentFactor
	"in range 0 to 1: how many of the methods have comments in it"
	^ self getCached: #commentFactor ifAbsentPut: [
		(self methods collect: [:m | (m key parseTreeFor: m value) 
			ifNil: [0] ifNotNilDo: [:tree | tree comments size sign] ]) average roundTo: 0.01]