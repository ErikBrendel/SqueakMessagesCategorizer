*Categorizer-Core
inverted
	"return the inverted matrix of me. Only call with matrices with a determinant ~= 0!"
	
	"using the gauss-jordan-algorithm:
	'bigger' contains initially me and the identity right of me.
	At the end, there is an identity left, and the inverse right"
	| bigger|
	self assert: [nrows = ncols].
	bigger := Matrix rows: nrows columns: (nrows * 2) tabulate: [:y :x | 
		self at: y at: x ifInvalid: ((x - nrows = y) ifTrue: 1 ifFalse: 0)].
	(1 to: nrows) do: [:row | bigger invertStep: row].
	^ bigger atRows: 1 to: nrows columns: (nrows + 1) to: (nrows * 2)