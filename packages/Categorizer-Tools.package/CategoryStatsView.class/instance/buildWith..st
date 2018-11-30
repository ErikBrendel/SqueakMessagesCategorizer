building
buildWith: aBuilder
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: self class defaultExtent;
		children: {
			self buildSearchBarWith: aBuilder.
			self buildStatsListWith: aBuilder};
		yourself)