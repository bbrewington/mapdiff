require(xlsx)
#Read data from Census.gov "State and County Estimates for 2010"
http://www.census.gov/did/www/saipe/downloads/estmod10/est10ALL.xls

read.xlsx(url("http://www.census.gov/did/www/saipe/downloads/estmod10/est10ALL.xls"),sheetName="est10ALL",startRow=3)
#Error in path.expand(file) : invalid 'path' argument

#Paste together values in "STATEFP" & "COUNTYFP" with a "-" separator
#FIPS_df<-cbind(
#  FIPS_df,
#  STATEFP.COUNTYFP=
#    paste(
#      FIPS_df$STATEFP,
#      "-",
#      FIPS_df$COUNTYFP,
#      sep=""))

#Write to csv file FIPS_df.csv
#write.csv(FIPS_df,"FIPS_df.csv",row.names=FALSE)