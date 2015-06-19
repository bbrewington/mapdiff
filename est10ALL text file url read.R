#read data from http://www.census.gov/did/www/saipe/downloads/estmod10/est10ALL.txt
#using package readr --> function read_fwf

#the statement below kind of sort of reads the data, but something is off
#in the width argument
#
read_fwf(url("http://www.census.gov/did/www/saipe/downloads/estmod10/est10ALL.txt"),fwf_widths(width=c(2,3,8,8,8,4,4,4,8,8,8,4,4,4,8,8,8,4,4,4,6,6,6,7,7,7,4,4,4,45,2,22)))