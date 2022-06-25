
 d1 <- "sub  	2002	2003	2004	2005	2006	
        mrj		2196a 	1973 	2142 	2114 	2061   
        coc		1032 	986 	998 	872 	97   
        crk		337 	269 	215 	230 	243" 	  
xd1 <- read.table (textConnection(d1), header=TRUE, as.is=TRUE)
dim  (xd1)


f1<-read.table(text="CTFIP   Hispanic    NonHispanic
	                   6001    323307  1154673
	                   6003    63      1113
                     6005    4566    33761
                     6007    29512   189123
                     6009    4595    41399
                     6011    11136   10029", header=T)
dim  (f1)

observed <- scan(text='
1 0 1 2 2 2 2 1 3 1 3 3
4 5 4 8 5 5 5 9 6 17 6 9
7 24 7 16 8 23 8 27',
                 what=list(integer(),integer(),integer(),integer()),
                 sep=' ',
)
names(observed) <- c('weeks','calls', 'x1','x2' )
observed <- as.data.frame(observed)

observed