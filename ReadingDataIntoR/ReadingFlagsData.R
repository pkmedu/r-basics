




# Read a csv file, named "flag.data"
flags <- read.table("C:/r-basics/Data/flag.data", sep=',', header=FALSE)
colnames(flags) <- c('name', 'landmass', 'zone', 'area', 'population', 'language', 
            'religion', 'bars', 'stripes', 'colours', 
            'red', 'green', 'blue', 'gold', 'white', 'black', 'orange', 
            'mainhue','circles', 'crosses', 'saltires', 'quarters', 'sunstars',
            'crescent','triangle', 'icon', 'animate',
            'text', 'topleft', 'botright')
flags
save(flags, file='c:/r-basics/Data/flags.Rdata')
rm(flags)