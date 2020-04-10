initialize
initialize 
super initialize. 
header:= HeaderComponent new.
header onAnswer: [: answer | self answer  ]
