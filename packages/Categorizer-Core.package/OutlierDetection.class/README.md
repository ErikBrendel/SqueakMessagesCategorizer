This class sorts a given set of objects associated with a numeric metric by how much these objects appear to be an outlier. This outlier detection is performed calculating a "normal range" (the core of the metric value range containing 80% of the data sample: 10% below, 10% above). Anything in that range has an outlier factor between zero (in the center of it) and one (at the border), anything outside has bigger values, depending on how far away it is (e.g. three normal ranges too high -> outlier factor of 6).

Usage:
See CategorizerMain example methods, or use something like:
(OutlierDetection onObjects: myObjectCollection withMetric: metricConverter) findOutlisersSorted

This outlier detection is translation and scale - invariant.