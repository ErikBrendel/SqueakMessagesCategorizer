model interface
createStatsListFor: categoryName
	|stats global line|
	stats := CategoryStats newOn: categoryName asString.
	global := CategoryStats global.
	line := [:selector | (stats perform: selector) asString, ' / ', (global perform: selector) asString].
	^  {
		('Packages: ' , (line value: #numberOfPackages)).
		('In classes: ', (line value: #numberOfClasses)).
		('Methods: ' , (line value: #numberOfMethods)).
		('Unique methods: ' , (line value: #numberOfUniqueMethods)).
		('Average LOC: ' , (line value: #averageMethodLength)).
		}