# read in the data file
athletes <- read.table('/home/epa/DAP/athletes.txt', header=T, sep=',')

# print 'summary' stats of the athletes' weight
# print(summary(athletes$Wt))

# filter the data looking for w_polo

wpolo <- athletes[athletes$Sport=="w_polo",]
wpolo_men <- wpolo[wpolo$Sex==0,]

wpolo <- athletes[athletes$Sport=="w_polo" & athletes$Sex=="0",]
print(summary(wpolo))
