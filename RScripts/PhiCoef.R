require(psych)

# dat = read.csv('outputs/EVERYTHING.csv')
# dat = read.csv('outputs/all.csv')
# dat = read.csv('outputs/4.csv')
dat = read.csv('outputs/3.csv')
# dat = read.csv('outputs/2.csv')
# dat = read.csv('outputs/tie.csv') ## This will not run 4 anything because 4 will not agree if there is a tie. 

# head( dat )

# BERT
dat$BERTThe  = as.integer(dat$ModelPrediction == 'the')
dat$BERTA    = as.integer(dat$ModelPrediction == 'a')
dat$BERTNull = as.integer(dat$ModelPrediction == 'null')

# 4
dat$FourThe  = as.integer(dat$X4_Label == 'the')
dat$FourA    = as.integer(dat$X4_Label == 'a')
dat$FourNull = as.integer(dat$X4_Label == 'null')

# Corpus
dat$CorpusThe  = as.integer(dat$TrueLabel == 'the')
dat$CorpusA    = as.integer(dat$TrueLabel == 'a')
dat$CorpusNull = as.integer(dat$TrueLabel == 'null')

# 5th
dat$FifthThe  = as.integer(dat$Person5 == 'the')
dat$FifthA    = as.integer(dat$Person5 == 'a')
dat$FifthNull = as.integer(dat$Person5 == 'null')


# phi-coefficients

print( "BERT vs 4" )
print( paste( "The"  , phi(xtabs(~ BERTThe  + FourThe , data=dat), 4) ) )
print( paste( "A"    , phi(xtabs(~ BERTA    + FourA   , data=dat), 4) ) ) 
print( paste( "Null" , phi(xtabs(~ BERTNull + FourNull, data=dat), 4) ) ) 

print( "BERT vs Corpus" )
print( paste( "The"  , phi(xtabs(~ BERTThe  + CorpusThe , data=dat), 4) ) )
print( paste( "A"    , phi(xtabs(~ BERTA    + CorpusA   , data=dat), 4) ) ) 
print( paste( "Null" , phi(xtabs(~ BERTNull + CorpusNull, data=dat), 4) ) ) 

print( "Corpus vs 4" )
print( paste( "The"  , phi(xtabs(~ CorpusThe  + FourThe , data=dat), 4) ) )
print( paste( "A"    , phi(xtabs(~ CorpusA    + FourA   , data=dat), 4) ) ) 
print( paste( "Null" , phi(xtabs(~ CorpusNull + FourNull, data=dat), 4) ) ) 

print( "BERT vs 5th" )
print( paste( "The"  , phi(xtabs(~ BERTThe  + FifthThe , data=dat), 4) ) )
print( paste( "A"    , phi(xtabs(~ BERTA    + FifthA   , data=dat), 4) ) ) 
print( paste( "Null" , phi(xtabs(~ BERTNull + FifthNull, data=dat), 4) ) ) 

print( "4 vs 5th" )
print( paste( "The"  , phi(xtabs(~ FourThe  + FifthThe , data=dat), 4) ) )
print( paste( "A"    , phi(xtabs(~ FourA    + FifthA   , data=dat), 4) ) ) 
print( paste( "Null" , phi(xtabs(~ FourNull + FifthNull, data=dat), 4) ) ) 

print( "Corpus vs 5th" )
print( paste( "The"  , phi(xtabs(~ CorpusThe  + FifthThe , data=dat), 4) ) )
print( paste( "A"    , phi(xtabs(~ CorpusA    + FifthA   , data=dat), 4) ) ) 
print( paste( "Null" , phi(xtabs(~ CorpusNull + FifthNull, data=dat), 4) ) ) 
