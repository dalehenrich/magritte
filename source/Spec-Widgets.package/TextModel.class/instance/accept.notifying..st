morphic
accept: aText notifying: aNotifyier

	textHolder contents: aText.
	actionToPerformHolder contents cull: aText cull: aNotifyier.
	
	"Dummy changed to raise an announcement"
	actionPerformedHolder contents: nil.
	self changed: #clearUserEdits.