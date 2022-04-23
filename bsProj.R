#IMPORTING THE DATA FROM THE EXCEL FILES
data0 <- read.csv('T0_data.csv')
data1 <- read.csv('TC1_data.csv')
data2 <- read.csv('TC2_data.csv')
data3 <- read.csv('TC3_data.csv')
data4 <- read.csv('TC4_data.csv')
data5 <- read.csv('TC5_data.csv')

#REMOVING THE COLUMNS CONTAINING GENE NUMBERS FOR CALCULATION OF ROW MEANS
data0 <- subset(data0, select = - Genes)
data1 <- subset(data1, select = - Genes)
data2 <- subset(data2, select = - Genes)
data3 <- subset(data3, select = - Genes)
data4 <- subset(data4, select = - Genes)
data5 <- subset(data5, select = - Genes)

#CALCULATING THE MEAN OF EACH GENE IN EVERY COMPOUND
meanData0 <- rowMeans(data0)
meanData1 <- rowMeans(data1)
meanData2 <- rowMeans(data2)
meanData3 <- rowMeans(data3)
meanData4 <- rowMeans(data4)
meanData5 <- rowMeans(data5)

finalData <- data.frame(meanData0,meanData1,meanData2,meanData3,meanData4,meanData5)

#CALCULATING THE X^2 DISTANCE 
chisq.test(meanData0)
chisq.test(meanData1)
chisq.test(meanData2)
chisq.test(meanData3)
chisq.test(meanData4)
chisq.test(meanData5)







