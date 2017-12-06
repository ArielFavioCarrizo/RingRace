initialization
initializeWithEffects: someSquareEffects
	effects := someSquareEffects.
	compositeEffect := InstantaneousEffect compositeWith: someSquareEffects.