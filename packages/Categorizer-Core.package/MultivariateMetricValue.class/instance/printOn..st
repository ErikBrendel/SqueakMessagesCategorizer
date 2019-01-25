printing
printOn: aStream
	
	aStream nextPutAll: '[ '.
	self metrics do: [:m | m printOn: aStream. aStream nextPutAll: ' '].
	aStream nextPutAll: '] - '.
	self object printOn: aStream.