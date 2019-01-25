high-level-access
bestCategoryFor: aMethodDescriptor
	"see in which categories the given method selector can be found how often"
	| hist desc |
	hist := self removeUnclassifiedFromHistogram: (self categoryHistogramOf: aMethodDescriptor).
	hist isEmpty ifFalse: [^ hist first key].
	
	desc := aMethodDescriptor asString removeLastCamelCaseWord.
	[desc size > 0] whileTrue: [
		hist := self removeUnclassifiedFromHistogram: (self categoryHistogramOfPrefix: desc).
		hist isEmpty ifFalse: [^ hist first key].
		desc := desc removeLastCamelCaseWord.
	].
	
	^ nil