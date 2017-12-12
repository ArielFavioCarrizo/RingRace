tests
testWhenCreatingABoardStateWithProbabilitiesItHasCorrectEffects
	| board squareEffectsWithProbability effectsShouldBeInBoard atomicBomb wormHole speedUp|
	atomicBomb := AtomicBombSquareEffect new.
	wormHole := WormHoleSquareEffect new.
	speedUp := SpeedUpSquareEffect new.
	squareEffectsWithProbability := EffectsProbabilityConfigurator withEffects: { atomicBomb. wormHole. speedUp. }	eachWithProbability: { 25. 25. 50. }.
	
	board := BoardState withRandomSource: (ReadStream on: #(0.01 0.01 0.01 0.30 0.30 0.30 0.90 0.90 0.90)) andSquareEffectsWithProbability: squareEffectsWithProbability  andLength: 9.
	
	effectsShouldBeInBoard := {	atomicBomb.
										atomicBomb.
										atomicBomb.
										wormHole.
										wormHole.
										wormHole.
										speedUp.
										speedUp.
										speedUp
										}.
	1 to: board length do: [ :i | self assert: (board squareStateAt: i) compositeEffect equals: (effectsShouldBeInBoard at: i) ]