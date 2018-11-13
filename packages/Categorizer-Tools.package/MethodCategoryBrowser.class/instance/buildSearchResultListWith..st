as yet unclassified
buildSearchResultListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #searchResultList;
		getIndex: #searchResultIndex;
		setIndex: #searchResultIndex:;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0.2;
			rightFraction: 0.5;
			bottomFraction: 1);
		yourself