initialization
initialize
	"Initialization code for DropListModel"

	super initialize.

	listHolder := OrderedCollection new asValueHolder.
	selectionHolder := SelectionValueHolder new.
	
	listHolder whenChangedDo: [ 
					self changed: #getList.
					self internalResetSelection. ].
				
	selectionHolder whenChangedDo: [ self changed: #getIndex ].
	self whenSelectedItemChanged: [:item | item value ]