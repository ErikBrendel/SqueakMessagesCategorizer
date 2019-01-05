model interface
selectedCategoryName
	categoryHistogram ifNil: [^ nil].
	^ (categoryHistogram collect: [:e | e key]) at: self selectedCategory