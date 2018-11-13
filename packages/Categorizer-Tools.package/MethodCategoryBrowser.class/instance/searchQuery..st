model interface
searchQuery: newString
	(newString = self searchQuery) ifTrue: [^ self].
	searchQuery := newString.
	searchResults := nil.
	selectedMethod := nil.
	self changed: #searchResultList.
	categoryHistogram := nil.
	self changed: #categoryList.
	Transcript showln: self searchQuery