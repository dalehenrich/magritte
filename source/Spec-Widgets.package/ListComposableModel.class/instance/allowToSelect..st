protocol
allowToSelect: aBoolean
	<api: #boolean getter: #allowToSelect registration: #whenAllowToSelectChanged:>
	"Set if the list items can be selected or not"

	allowToSelect contents: aBoolean.
	aBoolean 
		ifFalse: [ self resetSelection ].