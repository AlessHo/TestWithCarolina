Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounterIsSetandRead [

| c |
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [

| c |
c := Counter new.
c count: 7.
c decrement ; decrement.
self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testIncrement [

| c |
c := Counter new.
c count: 7.
c increment ; increment.
self assert: c count equals: 9
]

{ #category : #tests }
CounterTest >> testInitialize [

| c |
c := Counter new.
c increment ; increment.
self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testStartingAtFive [

| c |
c := Counter startingAt: 5.
self assert: c count equals: 5
]
