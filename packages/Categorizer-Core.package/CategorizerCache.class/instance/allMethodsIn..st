accessing
allMethodsIn: aCategory
	"returns a list of (class -> methodName) objects"
	methodsPerCategory ifNil: [methodsPerCategory := Dictionary new].
	^ methodsPerCategory
		at: aCategory
		ifAbsentPut: [self findAllMethodsIn: aCategory]