





write.csv(stations, "DMP_19_S3_spps_CH1.csv")


species <- as.character(unique(X30_DMP_[,3]))
Rabbit<- as.data.frame(unique(X30_DMP_[,5]))
x <-as.vector(length(unique(X30_DMP_[,3])), mode="numeric")
y <-as.vector(length(unique(X30_DMP_[,2])), mode="numeric")
stations <- as.data.frame(unique(X30_DMP_[,2]), stringsAsFactors=F)
colnames(stations) <- "Station"
stations[species] <-NA

for (i in 1:y) { 
  cam <- as.character(stations[i,2])
  for (j in 1:x) { 
    sp <- as.character((Rabbit[j,4]))
    
    trigs <- subset(X30_DMP_, Station==cam & Rabbit==sp)                  
    
    rows <- as.character(nrow(trigs))
    
    stations[i,(j+2)] <- rows
  }
}



write.csv(stations, "DMP_19_S3_spps_CH1.csv")


