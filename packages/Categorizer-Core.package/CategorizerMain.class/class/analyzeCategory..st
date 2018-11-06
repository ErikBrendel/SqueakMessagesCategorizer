as yet unclassified
analyzeCategory: category
	|stats global|
	stats := CategoryStats newOn: category.
	global := CategoryStats global.
	
	Transcript showln: '--- Category report: ', category, ' ---'.
	Transcript showln: 'Used in ', (stats numberOfClasses) asString, ' / ', (global numberOfClasses) asString, ' classes.'.
	Transcript showln: 'Contains ', (stats numberOfMethods) asString, ' / ', (global numberOfMethods) asString, ' methods.'.
	Transcript showln: 'Contains ', (stats numberOfUniqueMethods) asString, ' / ', (global numberOfUniqueMethods) asString, ' unique method names.'.
	Transcript showln: '--- end of report ---'.