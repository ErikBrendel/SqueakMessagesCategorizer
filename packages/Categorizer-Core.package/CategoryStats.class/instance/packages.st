accessing
packages 
	|packageDict|
	packageDict := SystemOrganizer default elementCategoryDict.
	^ (((self methods collect: [:m | m key]) asSet select: [:c | c isMeta not]) collect: [:c | packageDict at: c name asSymbol]) asSet asList.