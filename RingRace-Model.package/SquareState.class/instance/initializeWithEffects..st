initialization
initializeWithEffects: someSquareEffects
	effects := OrderedCollection withAll: someSquareEffects.
	compositeEffect := InstantaneousEffect compositeWith: someSquareEffects.