*Magritte-Model
magritteDescriptionBuilders
	|builderPragmas container containerClass|
	builderPragmas := Pragma allNamed: #magritteBuilder from: self class to: Object.
	builderPragmas ifEmpty: [ ^nil ].
	containerClass := Smalltalk at: #'QCDescriptionBuilderContainer' ifAbsent: [ ^nil ].
	container := containerClass new.
	builderPragmas do: [ :pragma |
		|bld |
		pragma method numArgs = 0 ifTrue: [ 
			bld := self perform: pragma method selector.
			bld ifNotNil: [ container add: bld ] ] ].
	^container
