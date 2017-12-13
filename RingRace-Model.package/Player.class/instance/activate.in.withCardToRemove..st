action
activate: aCard in: aGame withCardToRemove: aCardToRemove
	self ifItHas: aCard do: [ aGame activate: aCard for: self withCardToRemove: aCardToRemove. cards remove: aCard ].