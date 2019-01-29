building
buildStatsListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #statsList;
		getSelected: #selectedStat;
		setSelected: #selectedStat:;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0.1;
			rightFraction: 0.5;
			bottomFraction: 1);
		yourself