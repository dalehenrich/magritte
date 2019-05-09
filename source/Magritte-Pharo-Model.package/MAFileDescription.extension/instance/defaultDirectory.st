*magritte-pharo-model
defaultDirectory

	^ self propertyAt: #defaultDirectory ifAbsent: [ MAFileSystem imageDirectory ].
