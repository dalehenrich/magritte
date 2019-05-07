*magritte-tests-gemstone-model
testStore
	| evaluator |
	evaluator := GRPlatform current magritteEvaluatorClassFor: self actualClass.
	self assert: (evaluator evaluate: self accessor storeString) = self accessor
