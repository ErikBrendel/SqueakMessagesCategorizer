initialization
findAllCategories
	"actually finding all the categories in the system and returning them in a sorted list"
	|cats|
	cats := Set new.
	SystemNavigation default allBehaviorsDo: [:beh | beh methodDict valuesDo: [:method |
		cats add: method methodReference category asString]].
	cats := cats select: [:cat | cat first ~= $*].
	^ (OrderedCollection newFrom: cats) sort