categorization
bestCategoryFor: aMethodDescriptor
	"see in which categories the given method selector can be found how often"
	| hist desc |
	hist := self removeUnclassifiedFromHistogram: (self categoryHistogramOf: aMethodDescriptor).
	self if: hist isGoodFor: aMethodDescriptor do: [:k | ^ k].
	
	desc := aMethodDescriptor asString removeLastCamelCaseWord.
	[desc size > 0] whileTrue: [
		hist := self removeUnclassifiedFromHistogram: (self categoryHistogramOfPrefix: desc).
		self if: hist isGoodFor: aMethodDescriptor do: [:k | ^ k].
		desc := desc removeLastCamelCaseWord.
	].
	
	^ nil