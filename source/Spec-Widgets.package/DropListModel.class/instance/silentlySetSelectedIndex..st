private
silentlySetSelectedIndex: anIndex
	"Force the selection of the item at index anIndex"
	| selection |

	selection := listHolder contents at: anIndex ifAbsent: [ ^ self ].
	selectionHolder index contents: anIndex.
	selectionHolder selection contents: selection