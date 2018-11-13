building
buildCategoryListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #categoryList;
		getSelected: #selectedCategory;
		setSelected: #selectedCategory:;
		frame: (LayoutFrame new
			leftFraction: 0.5;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 1);
		yourself