high-level-access
removeUnclassifiedFromHistogram: histogram
	^ histogram select: [:a | a key ~= Categorizer default]