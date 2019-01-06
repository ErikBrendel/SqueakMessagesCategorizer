building
browseMethods
	|method methodSelector category cache messages|
	method := self selectedSearchResult.
	methodSelector := method asSymbol.
	category := self selectedCategoryName.
	cache := CategorizerCache default.
	messages := OrderedCollection new.
	
	(cache allOccurencesOf: method) do: [:classAndCategory |
		(classAndCategory value = category)
			ifTrue: [messages add: (MethodReference class: classAndCategory key selector: methodSelector)]
	].
	MessageSet openMessageList: messages name: ('Occurrences of ', method, ' in ', category)
	