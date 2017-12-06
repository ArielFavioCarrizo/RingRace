tests
testWhenCreatingASquareStateItHasTheCorrectEffects
	|effects|
	effects := OrderedCollection withAll: { AtomicBombSquareEffect new . SpeedUpSquareEffect new }.
	self assert: ( (SquareState withEffects: effects) effects ) equals: effects.