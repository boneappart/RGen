
## loads casv file into dframe
dframe<-read.csv("quiz1.csv")

## calcualte the number of rows in the file
nrow(dframe)

## deterrmine the number of NA in column Ozone
good<-complete.cases(dframe$O)
length(dframe$O[good])

## The logical index vector is.na can also be used, here to calculate mean while taking out NA values
sweet<-is.na(dframe$O)
sum (dframe$O[!sweet])

## to determine the maximum in Ozone level for a particular month
max (dframe$O [dframe$M==5&!sweet])

## Calcualte the mean of Solar.R when Ozone levels are > 31 and the temperature is >90
sunny<-complete.cases(dframe$Solar.R)
mean (dframe$Solar.R [dframe$O >31 & dframe$T>90 & !sweet &sunny])