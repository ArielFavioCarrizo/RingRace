action
putLastSquareEffect: aSquareEffect in: aGameStateContext
	aGameStateContext newTransformedLastState: [ :gameState | gameState withLastSquareEffect: aSquareEffect ]