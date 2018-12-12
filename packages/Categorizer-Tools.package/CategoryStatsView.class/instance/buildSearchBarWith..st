building
buildSearchBarWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #searchQuery;
		setText: #searchQuery:;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 0.1);
		yourself