Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #adding }
DieHandle >> addDie: newDie [

	dice add: newDie 
]

{ #category : #initialization }
DieHandle >> dice [

	^ dice

	
]

{ #category : #adding }
DieHandle >> diceNumber [ 

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 
	
	super initialize.
	dice := OrderedCollection new

	
]
