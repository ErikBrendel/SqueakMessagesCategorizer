accessing
allOccurencesOfPrefix: aMethodPrefix
	"give me 'initialize' or 'at:if', and i give you a list of (class -> category) objects
	defining where methods starting like this can be found"
	occurrencesPerMethodPrefix ifNil: [occurrencesPerMethodPrefix := Dictionary new].
	^ occurrencesPerMethod
		at: aMethodPrefix
		ifAbsentPut: [self findAllOccurrencesOfPrefix: aMethodPrefix]