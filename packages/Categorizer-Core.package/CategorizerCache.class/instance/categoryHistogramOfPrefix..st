high-level-access
categoryHistogramOfPrefix: aMethodPrefix
	"see in which categories the given method prefix can be found how often"
	^ self categoryHistogramOfList: (self allOccurencesOfPrefix: aMethodPrefix)