example
example
	| m |

	m := TreeModel new.
	m openWithSpec.
	m roots: #(a b c d).
	m childrenBlock: [:it | it = #c 
							ifTrue: [ {1. 2. 3} ]
							ifFalse: [ {} ]].
	m displayBlock: [:item | item isSymbol
								ifTrue: [ item, ' symbol' ]
								ifFalse: [ item printString ]].