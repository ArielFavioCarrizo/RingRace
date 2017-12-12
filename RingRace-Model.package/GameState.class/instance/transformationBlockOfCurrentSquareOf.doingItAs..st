accessing
transformationBlockOfCurrentSquareOf: aPlayer doingItAs: aTransformerBlock
	|squareNumber|
	squareNumber := (self stateOf: aPlayer) positionInGame squareNumber.
	
	^[ :oldGameState | oldGameState withTransformedBoardStateDoingItAs: [ :oldBoardState | oldBoardState withTransformedSquareStateAt: squareNumber doingItAs:  aTransformerBlock ] ]