model interface
searchResultList
	(self searchQuery size <= 0) ifTrue: [^ {self class pleaseSearchMessage}].
	searchResults ifNil: [searchResults := {self searchQuery}].
	^searchResults