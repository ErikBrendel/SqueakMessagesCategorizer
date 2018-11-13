as yet unclassified
buildWith: aBuilder
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: self class defaultExtent;
		children: {
			self buildSearchBarWith: aBuilder.
			self buildSearchResultListWith: aBuilder.
			self buildCategoryListWith: aBuilder};
		yourself)