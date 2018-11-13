as yet unclassified
buildCategoryListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #categoryList;
		getIndex: #categoryIndex;
		setIndex: #categoryIndex:;
		frame: (LayoutFrame new
			leftFraction: 0.5;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 1);
		yourself