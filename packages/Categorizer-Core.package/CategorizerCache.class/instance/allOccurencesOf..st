accessing
allOccurencesOf: aMethodDescriptor
	"give me 'initialize' or 'at:ifAbsentPut:', and i give you a list of (class -> category) objects
	defining where this method can be found"
	occurrencesPerMethod ifNil: [occurrencesPerMethod := Dictionary new].
	^ occurrencesPerMethod
		at: aMethodDescriptor
		ifAbsentPut: [self findAllOccurrencesOf: aMethodDescriptor]