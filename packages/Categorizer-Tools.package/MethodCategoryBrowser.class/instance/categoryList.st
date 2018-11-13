model interface
categoryList
	(self searchQuery size <= 0) ifTrue: [^ {self class pleaseSearchMessage}].
	self selectedSearchResult ifNil: [^ {self class pleaseSearchMessage}].
	categoryHistogram ifNil: [categoryHistogram :=
		CategorizerCache default categoryHistogramOf: self selectedSearchResult].
	^ categoryHistogram collect: [:e | e value asString, ' - ', e key asString]