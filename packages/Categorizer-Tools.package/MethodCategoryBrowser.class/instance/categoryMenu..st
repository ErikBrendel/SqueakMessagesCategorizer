building
categoryMenu: aMenu
	categoryHistogram ifNil: [^ aMenu].
	^ aMenu addList: #(
			('go there' browseMethods)
			-
			('open stats view' openStats)
		);
		yourself