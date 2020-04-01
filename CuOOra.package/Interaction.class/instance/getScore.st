public
getScore
"suma todos los values de cada vote"
^ votes inject:0 into: [ :total :each | total + each getValue ]
