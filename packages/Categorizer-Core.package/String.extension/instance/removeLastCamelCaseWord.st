*Categorizer-Core
removeLastCamelCaseWord
	"removes the last word from a camelcase and colon - separated word list"
	"MyTest -> My  and   at:put: -> at:"
	| str |
	str := self.
	(str last = $:) ifTrue: [str := str allButLast].
	[(str size > 0) and: [str last isUppercase not] and: [str last ~= $:]]
		whileTrue: [str := str allButLast].
	((str size > 0) and: [str last isUppercase]) ifTrue: [str := str allButLast].
	^ str.