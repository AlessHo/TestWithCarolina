Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: facesNumber [
	|instance|
   instance := self new.
	instance faces: facesNumber .
	^instance
]

{ #category : #accessing }
Die >> faces [

	^ faces 
]

{ #category : #accessing }
Die >> faces: anInteger [

	faces := anInteger 
]

{ #category : #initialization }
Die >> initialize [ 

	super initialize.
	faces := 6
]

{ #category : #'as yet unclassified' }
Die >> roll [

	^ faces atRandom 
]
