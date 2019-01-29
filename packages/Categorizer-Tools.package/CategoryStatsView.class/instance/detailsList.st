model interface
detailsList
	categoryStats ifNil: [^ {self class pleaseSearchMessage}].
	detailsList := self createDetailsListFor: detail.
	^ detailsList