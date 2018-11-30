model interface
statsList
	(self searchQuery size <= 0) ifTrue: [^ {self class pleaseSearchMessage}].
	statsList ifNil: [statsList := self createStatsListFor: self searchQuery].
	^ statsList