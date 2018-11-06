as yet unclassified
global
	^ globalStats ifNil: [globalStats := CategoryStats newOn: Categorizer allCategory]