printing
printOn: aStream
	
	aStream nextPutAll: 'a MetricValue: '.
	self metric printOn: aStream.
	aStream nextPutAll: ' for '.
	self object printOn: aStream.