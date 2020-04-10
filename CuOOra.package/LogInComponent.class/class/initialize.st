initialize
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'Cuoora'.
	application sessionClass: SessionWithUser