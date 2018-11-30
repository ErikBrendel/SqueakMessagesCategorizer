model interface
createStatsListFor: categoryName
	|stats global|
	stats := CategoryStats newOn: categoryName.
	global := CategoryStats global.
	^  {
		('In classes: ', stats numberOfClasses asString , ' / ',  global numberOfClasses asString).
		('Methods: ' , stats numberOfMethods asString , ' / ' , global numberOfMethods asString).
		('Unique methods: ' , stats numberOfUniqueMethods asString , ' / ' , global numberOfUniqueMethods asString).
		}