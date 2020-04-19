rendering
renderFollowButtonOn: aCanvas
		(self session user username == user username ) ifFalse: [ aCanvas anchor
				callback: [ self follow ];
				with: 'Follow' ]