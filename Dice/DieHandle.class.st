Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #arithmetic }
DieHandle >> + aDicable [

	"| handle |
	handle := DieHandle new.	 "
	
	"Aless"
	"1 to: self diceNumber do: [:n | handle addDie: (self dice at: n)]. 
	1 to: aDieHandle diceNumber do: [:n | handle addDie: (aDieHandle dice at: n)]."
	
	"self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	
	^ handle "
	
	^ aDicable sumWithHandle: self
	
		
	
	
	
]

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

{ #category : #adding }
DieHandle >> roll [
	
	|result|
	result := 0.
	1 to: self diceNumber do: [:n | result := result + (self dice at: n) roll].
	^ result 
	

"|result aDieHandle|

result := 0.
aDieHandle := DieHandle new
	addDie: (Die withFaces: 6);
	addDie: (Die withFaces: 10);
	yourself.
1 to: aDieHandle diceNumber do: [:n | result := result + (aDieHandle dice at: n) roll]"


]

{ #category : #arithmetic }
DieHandle >> sumWithDie: aDie [
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	handle addDie: aDie.
	^ handle
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithHandle: aDieHandle [
  | handle |
  handle := self class new.
  self dice do: [ :each | handle addDie: each ].
  aDieHandle dice do: [ :each | handle addDie: each ].
  ^ handle
]
