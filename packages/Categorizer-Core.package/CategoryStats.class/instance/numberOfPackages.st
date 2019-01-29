stats
numberOfPackages
	|packageDict|
	packageDict := SystemOrganizer default elementCategoryDict.
	^ self getCached: #numberOfPackages ifAbsentPut: [ "todo keine statischen?"
		(((self methods collect: [:m | m key]) asSet select: [:c | c isMeta not]) collect: [:c | packageDict at: c name asSymbol]) asSet size]