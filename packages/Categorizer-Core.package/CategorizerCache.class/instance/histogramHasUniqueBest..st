categorization
histogramHasUniqueBest: histogram
	"it is big enough when reaching here"
	^ (histogram size = 1) or: [histogram first value > ((self histogramSize: histogram) / 2)]