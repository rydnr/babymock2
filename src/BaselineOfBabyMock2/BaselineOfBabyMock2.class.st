"
**Class**

I'm a baseline to load BabyMock2.

**Responsibilities**

Guide Metacello to load BabyMock2.

**Collaborators**

Metacello
"
Class {
	#name : #BaselineOfBabyMock2,
	#superclass : #BaselineOf,
	#category : #BaselineOfBabyMock2
}

{ #category : #meta }
BaselineOfBabyMock2 class >> declareGroupsIn: spec [

	spec
		group: 'default' with: #( 'BabyMock2' )
]

{ #category : #meta }
BaselineOfBabyMock2 class >> declarePackagesIn: spec [

	spec
		package: #BabyMock2
]

{ #category : #baselines }
BaselineOfBabyMock2 >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec blessing: #baseline.
		self class
			declarePackagesIn: spec;
			declareGroupsIn: spec ]
]
