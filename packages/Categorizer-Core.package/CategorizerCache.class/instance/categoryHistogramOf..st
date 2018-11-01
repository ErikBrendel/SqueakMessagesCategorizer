accessing
categoryHistogramOf: aMethodDescriptor
	"see in which categories the given method selector can be found how often"
	|counter|
	counter := Dictionary new.
	(self allOccurencesOf: aMethodDescriptor) do: [:classAndCategory | 
		counter
			at: classAndCategory value
			ifPresent: [:val | counter at: classAndCategory value put: val + 1]
			ifAbsentPut: [1]
	].
	^ counter associations sort: [:a :b | a value > b value]