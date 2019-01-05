model interface
searchResultList
	(self searchQuery size <= 0) ifTrue: [^ {self class pleaseSearchMessage}].
	searchResults ifNil: [|query| 
		query := self searchQuery asString.
		searchResults := ((MessageNames new computeSelectorListFrom: query) collect: [:x | x asString]) asOrderedCollection.
		searchResults remove: query ifAbsent: [].
		searchResults addFirst: query
	].
	^searchResults