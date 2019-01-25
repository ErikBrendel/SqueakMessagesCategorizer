high-level-access
categoryHistogramOfList: occurrencesList
	"see in which categories the given method selector can be found how often"
	|counter|
	counter := Dictionary new.
	occurrencesList do: [:classAndCategory | 
		counter
			at: classAndCategory value
			ifPresent: [:val | counter at: classAndCategory value put: val + 1]
			ifAbsentPut: [1]
	].
	^ counter associations sort: [:a :b | a value > b value]