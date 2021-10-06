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

{ #category : #arithmetic }
Die >> + aDicable [
        ^ aDicable sumWithDie: self

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

{ #category : #printing }
Die >> printOn: aStream [

	"super printOn: aStream. 
	aStream	nextPutAll: '(', faces printString ,')'"
		  super printOn: aStream.
        aStream nextPutAll: ' ('.
        aStream print: faces.
        aStream nextPutAll: ')'
]

{ #category : #'as yet unclassified' }
Die >> roll [

	^ faces atRandom 
]

{ #category : #arithmetic }
Die >> sumWithDie: aDie [
        
			^ DieHandle new
          addDie: self;
          addDie: aDie; yourself
]

{ #category : #arithmetic }
Die >> sumWithHandle: aDieHandle [
	| handle |
	handle := DieHandle new.
	aDieHandle dice do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle
]
