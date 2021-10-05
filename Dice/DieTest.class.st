Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreationIsOk [

	self assert: (Die withFaces: 20) faces equals: 20
	
	
]

{ #category : #tests }
DieTest >> testInitializeIsOk [

	| d |
	d := Die new.	
	self assert: d faces equals: 6
	"self assert: Die new faces equals: 6"
	
]
