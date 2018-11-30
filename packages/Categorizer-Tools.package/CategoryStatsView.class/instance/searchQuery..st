model interface
searchQuery: newString
	(newString = self searchQuery) ifTrue: [^ self].
	searchQuery := newString.
	statsList := nil.
	self changed: #statsList.