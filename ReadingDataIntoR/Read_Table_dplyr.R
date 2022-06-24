
dd<-read.table(text="CTFIP   Hispanic    NonHispanic
	       6001    323307  1154673
	       6003    63      1113
               6005    4566    33761
               6007    29512   189123
               6009    4595    41399
               6011    11136   10029", header=T)


# Installed tidydr
library(tidyr)
# Create new variables
dd %>% 
  gather(ethnicity, freq, -CTFIP) %>% 
  mutate(HISPn=ifelse(ethnicity=="Hispanic", 1,2)) %>%
  select(HISPn, freq)