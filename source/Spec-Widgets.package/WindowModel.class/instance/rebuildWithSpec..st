private
rebuildWithSpec: aSpec
	| sub |
	
	sub := window submorphs copy.
	window removeAllMorphs.
	sub allButLast do: [:e | window addMorphBack: e ].
	self addModelIn: self widget withSpec: aSpec