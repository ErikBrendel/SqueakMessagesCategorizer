model interface
createDetailsListFor: detail
	((detail at: 1) asString = 'P') ifTrue: [^ categoryStats packages.].
	((detail at: 1) asString = 'M') ifTrue: [^ categoryStats methods.].
	((detail at: 1) asString = 'I') ifTrue: [^ categoryStats classes.].
	^ {''}