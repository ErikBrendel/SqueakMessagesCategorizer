building
buildCategoryListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #categoryList;
		getIndex: #selectedCategory;
		setIndex: #selectedCategory:;
		menu: #categoryMenu:;
		frame: (LayoutFrame new
			leftFraction: 0.5;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 1);
		yourself