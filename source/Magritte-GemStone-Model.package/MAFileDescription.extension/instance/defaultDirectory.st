*magritte-gemstone-model
defaultDirectory

	^ self propertyAt: #defaultDirectory ifAbsent: [ MCPlatformSupport defaultDirectory ].
