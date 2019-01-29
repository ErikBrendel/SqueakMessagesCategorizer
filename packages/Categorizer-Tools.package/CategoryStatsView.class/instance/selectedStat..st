model interface
selectedStat: aStat
	(aStat = self detail) ifTrue: [^ self].
	detail := aStat.
	detailsList := nil.
	self changed: #detailsList.