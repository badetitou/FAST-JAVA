Class {
	#name : #JavaSmaCCSuperSimpleMethodTest,
	#superclass : #JavaSmaCCImporterTest,
	#instVars : [
		'supersimple'
	],
	#category : #'FAST-Java-SmaCC-Importer-Tests'
}

{ #category : #resources }
JavaSmaCCSuperSimpleMethodTest >> methodSupersimple [
	^ 
'boolean supersimple() {
  return true;
}
'
]

{ #category : #running }
JavaSmaCCSuperSimpleMethodTest >> setUp [
	super setUp.
	supersimple := (self parseMethod: 'supersimple') allFASTJavaMethodEntity first
]

{ #category : #tests }
JavaSmaCCSuperSimpleMethodTest >> testExpressionParent [
	self assert: supersimple statements last expression parentNode equals: supersimple statements last
]

{ #category : #tests }
JavaSmaCCSuperSimpleMethodTest >> testExpressionType [
	self assert: supersimple statements last expression class equals: FASTJavaBooleanLiteral  
]

{ #category : #tests }
JavaSmaCCSuperSimpleMethodTest >> testStatementsCount [
	self assert: supersimple statements size equals: 1
]

{ #category : #tests }
JavaSmaCCSuperSimpleMethodTest >> testStatementsType [
	self assert: supersimple statements last class equals: FASTJavaReturnStatement  
]
