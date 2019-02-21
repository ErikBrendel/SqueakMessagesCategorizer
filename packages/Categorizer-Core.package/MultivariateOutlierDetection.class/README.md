This class sorts a given set of objects associated with a variable number of metrics by how much these objects appear to be an outlier. This outlier detection is performed by calculating the Mahalanobis distance of each object to the "mean object" (the one with mean metric values across the whole data set), and sorting the collection of objects according to this distance.

Usage:
See CategorizerMain example methods, or use something like:
(MultivariateOutlierDetection onObjects: myObjectCollection withMetrics: listOfMetricConverters) findOutlisersSorted

This outlier detection is translation, non-uniform-scale and rotation - invariant. When given a set of objects that all lie on a multidimensional ellipsis, each of their mahalanobis distance to the ellipsis center is 1.