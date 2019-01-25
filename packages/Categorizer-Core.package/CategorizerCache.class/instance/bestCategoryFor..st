accessing
bestCategoryFor: aMethodDescriptor
	"see in which categories the given method selector can be found how often"
	| hist |
	hist := self categoryHistogramOf: aMethodDescriptor.
	hist isEmpty ifTrue: [^ nil].
	^ hist first key