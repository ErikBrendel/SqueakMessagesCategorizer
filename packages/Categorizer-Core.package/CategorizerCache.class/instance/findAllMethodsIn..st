initialization
findAllMethodsIn: aCategory
	"todo: use a custom Categorizer extension method to do this faster?"
	"see Categorizer listAtCategoryNamed:"
	| methods |
	methods := OrderedCollection new.
	SystemNavigation default allBehaviorsDo:
		[:x | (x allMethodsInCategory: aCategory) do:
			[:sel | methods add: (x -> sel)]].
	^methods sort: [:a :b | a value <= b value].
	