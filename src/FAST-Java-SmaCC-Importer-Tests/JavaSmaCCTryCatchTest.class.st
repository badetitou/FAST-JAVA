Class {
	#name : #JavaSmaCCTryCatchTest,
	#superclass : #JavaSmaCCImporterTest,
	#instVars : [
		'tryCatchMethod'
	],
	#category : #'FAST-Java-SmaCC-Importer-Tests'
}

{ #category : #resources }
JavaSmaCCTryCatchTest >> methodTryCatch [
	^ 'void tryCatch() {
	int x;
	try {
		x = 1;
   } catch (Exception e) {
		Patate.displayError(e.getMessage());
	};
}
'
]

{ #category : #running }
JavaSmaCCTryCatchTest >> setUp [
	super setUp.
	tryCatchMethod := (self parseMethod: 'tryCatch') allFASTJavaMethodEntity first
]

{ #category : #tests }
JavaSmaCCTryCatchTest >> testTryCatchCatchBodyType [
	self assert: tryCatchMethod statements second catches first body class equals: FASTJavaStatementBlock
]

{ #category : #tests }
JavaSmaCCTryCatchTest >> testTryCatchCatchNumber [
	self assert: tryCatchMethod statements second catches size equals: 1
]

{ #category : #tests }
JavaSmaCCTryCatchTest >> testTryCatchCatchParametersName [
	self
		assert: tryCatchMethod statements second catches first parameter name
		equals: 'e'
]

{ #category : #tests }
JavaSmaCCTryCatchTest >> testTryCatchCatchParametersType [
	self
		assert: tryCatchMethod statements second catches first parameter class
		equals: FASTJavaVariableExpression
]

{ #category : #tests }
JavaSmaCCTryCatchTest >> testTryCatchTryPartType [
	self assert: tryCatchMethod statements second try class equals: FASTJavaStatementBlock
]

{ #category : #tests }
JavaSmaCCTryCatchTest >> testTryCatchType [
	self assert: tryCatchMethod statements second class equals: FASTJavaTryCatchStatement
]
