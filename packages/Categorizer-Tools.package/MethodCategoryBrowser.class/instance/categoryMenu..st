building
categoryMenu: aMenu
	categoryHistogram ifNil: [^ aMenu].
	^ aMenu addList: #(
			('open stats view' openStats)
		);
		yourself