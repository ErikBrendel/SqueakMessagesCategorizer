building
buildDetailListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #detailsList;
		getSelected: #selectedDetail;
		setSelected: #selectedDetail:;
		frame: (LayoutFrame new
			leftFraction: 0.5;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 1);
		yourself