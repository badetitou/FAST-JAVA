Class {
	#name : #JavaSmaCCStringLiteralTest,
	#superclass : #JavaSmaCCImporterTest,
	#instVars : [
		'methodStringLiteral'
	],
	#category : #'FAST-Java-SmaCC-Importer-Tests'
}

{ #category : #resources }
JavaSmaCCStringLiteralTest >> methodStringLiteral [
	^ 'public void patate () {
	print("Patate");
}'
]

{ #category : #running }
JavaSmaCCStringLiteralTest >> setUp [
	super setUp.
	methodStringLiteral := (self parseMethod: 'stringLiteral') allFASTJavaMethodEntity
		first
]

{ #category : #tests }
JavaSmaCCStringLiteralTest >> testStringLiteralType [
	self assert: methodStringLiteral statements first children anyOne arguments first class equals: FASTJavaStringLiteral
]

{ #category : #tests }
JavaSmaCCStringLiteralTest >> testStringLiteralValue [
	self assert: methodStringLiteral statements first children anyOne arguments first primitiveValue equals: 'Patate'
]
