model interface
createStatsListFor: categoryName
	|stats global line|
	stats := CategoryStats newOn: categoryName asString.
	global := CategoryStats global.
	line := [:selector | (stats perform: selector) asString, ' / ', (global perform: selector) asString].
	^  {
		('           ', categoryName, ' / global').
		('Packages: ' , (line value: #numberOfPackages)).
		('In classes: ', (line value: #numberOfClasses)).
		('Methods: ' , (line value: #numberOfMethods)).
		('Unique methods: ' , (line value: #numberOfUniqueMethods)).
		('Average LOC: ' , (line value: #averageMethodLength)).
		('Methods commented: ' , (line value: #commentFactorPercent)).
		}