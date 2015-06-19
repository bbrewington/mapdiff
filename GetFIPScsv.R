#Read data from Census.gov FIPS state & county codes into data frame FIPS_df
FIPS_df <- read.csv("http://www2.census.gov/geo/docs/reference/codes/files/national_county.txt",
         col.names=c("STATE","STATEFP","COUNTYFP","COUNTY","CLASS"),
         colClasses=rep("character",times=5))

#Paste together values in "STATEFP" & "COUNTYFP" with a "-" separator
FIPS_df<-cbind(
  FIPS_df,
  STATEFP.COUNTYFP=
    paste(
    FIPS_df$STATEFP,
    "-",
    FIPS_df$COUNTYFP,
    sep=""))

#Write to csv file FIPS_df.csv
write.csv(FIPS_df,"FIPS_df.csv",row.names=FALSE)