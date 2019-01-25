initialization
findAllOccurrencesOfPrefix: aMethodPrefix
	| occurrences |
	occurrences := OrderedCollection new.
	SystemNavigation default allBehaviorsDo:
		[:x | x methodDict keysAndValuesDo: [:methodDescriptor :method |
			(methodDescriptor beginsWith: aMethodPrefix)
				ifTrue: [occurrences add: (x -> method methodReference category)]]].
	^occurrences sort: [:a :b | a value <= b value].