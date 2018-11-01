initialization
findAllOccurrencesOf: aMethodDescriptor
	
	| occurrences |
	occurrences := OrderedCollection new.
	SystemNavigation default allBehaviorsDo:
		[:x | x methodDict
			at: aMethodDescriptor asSymbol
			ifPresent: [:m | occurrences add: (x -> m methodReference category)]].
	^occurrences sort: [:a :b | a value <= b value].
