accessing
classes 
	^ (self methods collect: [:m | m key]) asSet asList.