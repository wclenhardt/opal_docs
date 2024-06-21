###AHHS_Water_Cleaned_Data###
data <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/AHHS_Water_DataCleaned_231020_nmd.csv", header = TRUE) #head(data)
data <- na.omit(data)
length(unique(data$Sample))
length(unique(data$Compound))

Tdata <- matrix(data = NA, nrow = length(unique(data$Sample)), ncol = 1+4*length(unique(data$Compound)), byrow =FALSE, dimnames =NULL) #head(Tdata)
for (i in 1:length(unique(data$Sample))) { # i=2
  datasub <- data[data$Sample == unique(data$Sample)[i],]
  for (j in 1:length(unique(data$Compound))) { #j=2
    Tdata[i,1] <- unique(data$Sample)[i]
    Tdata[i,4*j-2] <- datasub[datasub$Compound == unique(data$Compound)[j],5]
    Tdata[i,4*j-1] <- datasub[datasub$Compound == unique(data$Compound)[j],3]
    Tdata[i,4*j] <- datasub[datasub$Compound == unique(data$Compound)[j],4]
    Tdata[i,4*j+1] <- datasub[datasub$Compound == unique(data$Compound)[j],7]
  }
}

colnames(Tdata) <- c("Sample","PFHpS_Concentration(ng/L)","PFHpS_MRL","PFHpS_DL","PFHpS_Flags","PFHxS_Concentration(ng/L)","PFHxS_MRL","PFHxS_DL","PFHxS_Flags","PFDA_Concentration(ng/L)","PFDA_MRL","PFDA_DL","PFDA_Flags","PFBA_Concentration(ng/L)","PFBA_MRL","PFBA_DL","PFBA_Flags" 
                     ,"PFPeA_Concentration(ng/L)","PFPeA_MRL","PFPeA_DL","PFPeA_Flags","PFPeS_Concentration(ng/L)","PFPeS_MRL","PFPeS_DL","PFPeS_Flags","PFNA_Concentration(ng/L)","PFNA_MRL","PFNA_DL","PFNA_Flags","PFHxA_Concentration(ng/L)","PFHxA_MRL","PFHxA_DL","PFHxA_Flags"
                     ,"PFBS_Concentration(ng/L)","PFBS_MRL","PFBS_DL","PFBS_Flags","PFOS_Concentration(ng/L)","PFOS_MRL","PFOS_DL","PFOS_Flags","PFHpA_Concentration(ng/L)","PFHpA_MRL","PFHpA_DL","PFHpA_Flags","PFOA_Concentration(ng/L)","PFOA_MRL","PFOA_DL","PFOA_Flags"
                     ,"PFNS_Concentration(ng/L)","PFNS_MRL","PFNS_DL","PFNS_Flags")
Tdata <- as.data.frame(Tdata)
write.csv(Tdata,"C:/Publications/PFAS database/Data Files Working Copies/Processed_data/AHHS_Water_DataCleaned_231020_nmd_Column.csv", row.names=FALSE)


###AHHS_Dust_Cleaned_Data###
data <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/AHHS_Dust_DataCleaned_231020_nmd.csv", header = TRUE) #head(data)
length(unique(data$Sample))
length(unique(data$Compound))

Tdata <- matrix(data = NA, nrow = length(unique(data$Sample)), ncol = 1+4*length(unique(data$Compound)), byrow =FALSE, dimnames =NULL) #head(Tdata)
for (i in 1:length(unique(data$Sample))) { # i=2
  datasub <- data[data$Sample == unique(data$Sample)[i],]
  for (j in 1:length(unique(data$Compound))) { #j=2
    Tdata[i,1] <- unique(data$Sample)[i]
    Tdata[i,4*j-2] <- datasub[datasub$Compound == unique(data$Compound)[j],5]
    Tdata[i,4*j-1] <- datasub[datasub$Compound == unique(data$Compound)[j],3]
    Tdata[i,4*j] <- datasub[datasub$Compound == unique(data$Compound)[j],4]
    Tdata[i,4*j+1] <- datasub[datasub$Compound == unique(data$Compound)[j],7]
  }
}

colnames(Tdata) <- c("Sample","PFNA_Concentration(ng/g)","PFNA_MRL","PFNA_DL","PFNA_Flags","PFDS_Concentration(ng/g)","PFDS_MRL","PFDS_DL","PFDS_Flags","PFHxA_Concentration(ng/g)","PFHxA_MRL","PFHxA_DL","PFHxA_Flags","PFOA_Concentration(ng/g)","PFOA_MRL","PFOA_DL","PFOA_Flags" 
                     ,"PFOS_Concentration(ng/g)","PFOS_MRL","PFOS_DL","PFOS_Flags","PFBA_Concentration(ng/g)","PFBA_MRL","PFBA_DL","PFBA_Flags","PFDoA_Concentration(ng/g)","PFDoA_MRL","PFDoA_DL","PFDoA_Flags","PFPeA_Concentration(ng/g)","PFPeA_MRL","PFPeA_DL","PFPeA_Flags"
                     ,"PFHpS_Concentration(ng/g)","PFHpS_MRL","PFHpS_DL","PFHpS_Flags","PFUnDA_Concentration(ng/g)","PFUnDA_MRL","PFUnDA_DL","PFUnDA_Flags","PFBS_Concentration(ng/g)","PFBS_MRL","PFBS_DL","PFBS_Flags","PFPeS_Concentration(ng/g)","PFPeS_MRL","PFPeS_DL","PFPeS_Flags"
                     ,"PFNS_Concentration(ng/g)","PFNS_MRL","PFNS_DL","PFNS_Flags","PFHpA_Concentration(ng/g)","PFHpA_MRL","PFHpA_DL","PFHpA_Flags","PFHxS_Concentration(ng/g)","PFHxS_MRL","PFHxS_DL","PFHxS_Flags","PFDA_Concentration(ng/g)","PFDA_MRL","PFDA_DL","PFDA_Flags")
Tdata <- as.data.frame(Tdata)
write.csv(Tdata,"C:/Publications/PFAS database/Data Files Working Copies/Processed_data/AHHS_Dust_DataCleaned_231020_nmd_Column.csv", row.names=FALSE)


###AHHSNontargetedDatasetWater###
data <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/AHHSNontargetedDatasetWater.csv", header = TRUE) #head(data)

Tdata <- matrix(data = NA, nrow = length(unique(data$Sample)), ncol = 2*dim(data)[2]-1, byrow =FALSE, dimnames =NULL) #head(Tdata) tail(Tdata)
for (i in 1:length(unique(data$Sample))) {
  datasub <- data[data$Sample == unique(data$Sample)[i],]
  for (j in 1:(dim(data)[2]-1)) { #i=3 j=1
    Tdata[i,1] <- unique(data$Sample)[i]
    a <- length(unlist(strsplit(as.character(datasub[j+1]), ",")))
    if (a  > 1) {
      Tdata[i,2*j] <- unlist(strsplit(as.character(datasub[j+1]), ","))[1]
      Tdata[i,2*j+1] <- unlist(strsplit(as.character(datasub[j+1]), ","))[2]
    }
    else {
      Tdata[i,2*j] <- unlist(strsplit(as.character(datasub[j+1]), ","))
      Tdata[i,2*j+1] <- " "
    }
  }
}

header <- matrix(data = NA, nrow = 150, ncol = 1, byrow =FALSE, dimnames =NULL)
for (i in 1:75) {
  header[2*i-1] <- colnames(data)[i+1]
  header[2*i] <- "Flags"
}

colnames(Tdata) <- rbind("Sample",header)


Tdata <- as.data.frame(Tdata)
write.csv(Tdata,"C:/Publications/PFAS database/Data Files Working Copies/Processed_data/AHHSNontargetedDatasetWater_Column.csv", row.names=FALSE)



###NCSDust###
data <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/NCSDust_output.csv", header = TRUE) #head(data)
length(unique(data$Sample))
length(unique(data$Cmp))

Tdata <- matrix(data = NA, nrow = length(unique(data$Sample)), ncol = 1+4*length(unique(data$Cmp)), byrow =FALSE, dimnames =NULL) #head(Tdata)
for (i in 1:length(unique(data$Sample))) { # i=46
  datasub <- data[data$Sample == unique(data$Sample)[i],]
  for (j in 1:length(unique(data$Cmp))) { #j=1
    Tdata[i,1] <- unique(data$Sample)[i]
    Tdata[i,4*j-2] <- mean(datasub[datasub$Cmp == unique(data$Cmp)[j],3])
    Tdata[i,4*j-1] <- mean(datasub[datasub$Cmp == unique(data$Cmp)[j],4])
    Tdata[i,4*j] <- mean(datasub[datasub$Cmp == unique(data$Cmp)[j],5])
    Tdata[i,4*j+1] <- datasub[datasub$Cmp == unique(data$Cmp)[j],7][1]
  }
}

colnames(Tdata) <- c("Sample","PFBA_Concentration(ng/g)","PFBA_MRL","PFBA_DL","PFBA_Flags","PFBS_Concentration(ng/g)","PFBS_MRL","PFBS_DL","PFBS_Flags","PFDA_Concentration(ng/g)","PFDA_MRL","PFDA_DL","PFDA_Flags","PFDoA_Concentration(ng/g)","PFDoA_MRL","PFDoA_DL","PFDoA_Flags" 
                     ,"PFDS_Concentration(ng/g)","PFDS_MRL","PFDS_DL","PFDS_Flags","PFHpA_Concentration(ng/g)","PFHpA_MRL","PFHpA_DL","PFHpA_Flags","PFHpS_Concentration(ng/g)","PFHpS_MRL","PFHpS_DL","PFHpS_Flags","PFHxA_Concentration(ng/g)","PFHxA_MRL","PFHxA_DL","PFHxA_Flags"
                     ,"PFHxS_Concentration(ng/g)","PFHxS_MRL","PFHxS_DL","PFHxS_Flags","PFNA_Concentration(ng/g)","PFNA_MRL","PFNA_DL","PFNA_Flags","PFNS_Concentration(ng/g)","PFNS_MRL","PFNS_DL","PFNS_Flags","PFOA_Concentration(ng/g)","PFOA_MRL","PFOA_DL","PFOA_Flags"
                     ,"PFOS_Concentration(ng/g)","PFOS_MRL","PFOS_DL","PFOS_Flags","PFPEA_Concentration(ng/g)","PFPEA_MRL","PFPEA_DL","PFPEA_Flags","PFPeS_Concentration(ng/g)","PFPeS_MRL","PFPeS_DL","PFPeS_Flags","PFUnDA_Concentration(ng/g)","PFUnDA_MRL","PFUnDA_DL","PFUnDA_Flags")
Tdata <- as.data.frame(Tdata)
write.csv(Tdata,"C:/Publications/PFAS database/Data Files Working Copies/Processed_data/NCSDust_output_Column.csv", row.names=FALSE)



###NCSSerum###
data <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/NCSSerum_output.csv", header = TRUE) #head(data)
length(unique(data$Sample))
length(unique(data$Cmp))

Tdata <- matrix(data = NA, nrow = length(unique(data$Sample)), ncol = 1+4*length(unique(data$Cmp)), byrow =FALSE, dimnames =NULL) #head(Tdata)
for (i in 1:length(unique(data$Sample))) { # i=2
  datasub <- data[data$Sample == unique(data$Sample)[i],]
  for (j in 1:length(unique(data$Cmp))) { #j=1
    Tdata[i,1] <- unique(data$Sample)[i]
    Tdata[i,4*j-2] <- datasub[datasub$Cmp == unique(data$Cmp)[j],3]
    Tdata[i,4*j-1] <- datasub[datasub$Cmp == unique(data$Cmp)[j],4]
    Tdata[i,4*j] <- datasub[datasub$Cmp == unique(data$Cmp)[j],5]
    Tdata[i,4*j+1] <- datasub[datasub$Cmp == unique(data$Cmp)[j],7]
  }
}

colnames(Tdata) <- c("Sample","PFBA_Concentration(ng/mL)","PFBA_MRL","PFBA_DL","PFBA_Flags","PFBS_Concentration(ng/mL)","PFBS_MRL","PFBS_DL","PFBS_Flags","PFDA_Concentration(ng/mL)","PFDA_MRL","PFDA_DL","PFDA_Flags","PFDoA_Concentration(ng/mL)","PFDoA_MRL","PFDoA_DL","PFDoA_Flags" 
                     ,"PFDS_Concentration(ng/mL)","PFDS_MRL","PFDS_DL","PFDS_Flags","PFHpA_Concentration(ng/mL)","PFHpA_MRL","PFHpA_DL","PFHpA_Flags","PFHpS_Concentration(ng/mL)","PFHpS_MRL","PFHpS_DL","PFHpS_Flags","PFHxA_Concentration(ng/mL)","PFHxA_MRL","PFHxA_DL","PFHxA_Flags"
                     ,"PFHxS_Concentration(ng/mL)","PFHxS_MRL","PFHxS_DL","PFHxS_Flags","PFNA_Concentration(ng/mL)","PFNA_MRL","PFNA_DL","PFNA_Flags","PFNS_Concentration(ng/mL)","PFNS_MRL","PFNS_DL","PFNS_Flags","PFOA_Concentration(ng/mL)","PFOA_MRL","PFOA_DL","PFOA_Flags"
                     ,"PFOS_Concentration(ng/mL)","PFOS_MRL","PFOS_DL","PFOS_Flags","PFPEA_Concentration(ng/mL)","PFPEA_MRL","PFPEA_DL","PFPEA_Flags","PFPeS_Concentration(ng/mL)","PFPeS_MRL","PFPeS_DL","PFPeS_Flags","PFUnDA_Concentration(ng/mL)","PFUnDA_MRL","PFUnDA_DL","PFUnDA_Flags")
Tdata <- as.data.frame(Tdata)
write.csv(Tdata,"C:/Publications/PFAS database/Data Files Working Copies/Processed_data/NCSSerum_output_Column.csv", row.names=FALSE)

###Correct NCS transposed Serum data Sample ID###
NCSSerum <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/Processed_data/NCSSerum_output_Column.csv", header = TRUE) #head(NCSSerum)
NCSDust <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/Processed_data/NCSDust_output_Column.csv", header = TRUE) #head(NCSDust)
Cross <- read.csv("C:/Publications/PFAS database/Data Files Working Copies/Replies from Jason Boettger/NCS_Serum_Dust_crosswalk_share.csv", header = TRUE) #head(Cross)
NCSSerum$CorrectSampleID <- NA
for (i in 1:105) { #i =1
  NCSSerum$CorrectSampleID[i] <- Cross[Cross$Serum.sampleid == NCSSerum$Sample[i],2]
}
write.csv(NCSSerum,"C:/Publications/PFAS database/Data Files Working Copies/Processed_data/NCSSerum_output_Column_Corrected_SampleID.csv", row.names=FALSE)

