accessing
allCategories
	
	^ allCategories ifNil: [allCategories := self findAllCategories]