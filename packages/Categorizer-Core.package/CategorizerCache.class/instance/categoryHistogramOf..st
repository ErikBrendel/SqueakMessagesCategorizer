high-level-access
categoryHistogramOf: aMethodDescriptor
	"see in which categories the given method selector can be found how often"
	^ self categoryHistogramOfList: (self allOccurencesOf: aMethodDescriptor)