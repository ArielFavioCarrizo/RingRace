execute
move: aPlayer in: aGameStateContext
	|playerState|
	playerState := aGameStateContext currentState stateOf: aPlayer.
	aGameStateContext newState: (aGameStateContext currentState withNewPlayerState: ( self newPlayerStateFrom: playerState withBoardState: ( aGameStateContext currentState boardState ) ) of: aPlayer).