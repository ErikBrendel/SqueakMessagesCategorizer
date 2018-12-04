as yet unclassified
mahalanobisDistanceBetween: a and: b using: covarianceInverse
	"calculates 'sqrt( (a-b)^T * Mat * (a-b) )' "
	"Does so by calculating 'Mat * (a-b)' first, then the dot product of that result and '(a-b)' "
	|bCopy diff|
	bCopy := b as: OrderedCollection.
	diff := a collect: [:val | val - (bCopy removeFirst)].
	^ ((covarianceInverse +* (diff asArray)) collect: [:v | v * (diff removeFirst)]) sum sqrt