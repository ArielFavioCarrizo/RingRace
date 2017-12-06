execute
newPlayerStateFrom: aPlayerState withBoardState: aBoardState
	^aPlayerState withNewPositionInGame: ( self newPositionInGameFrom: ( aPlayerState positionInGame ) withBoardState: aBoardState )