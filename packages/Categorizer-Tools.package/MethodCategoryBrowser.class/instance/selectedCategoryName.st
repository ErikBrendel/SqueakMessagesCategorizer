model interface
selectedCategoryName
	^ (categoryHistogram collect: [:e | e key]) at: self selectedCategory