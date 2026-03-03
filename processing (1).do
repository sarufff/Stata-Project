
*import the original data file into Stata
import delimited 2011IncomeByZipcode.csv, varnames(1)

*drop empty labels
drop if labelgrouping == "One race--"
drop if labelgrouping == "HOUSEHOLD INCOME BY RACE AND HISPANIC OR LATINO ORIGIN OF HOUSEHOLDER"
drop if labelgrouping == "HOUSEHOLD INCOME BY AGE OF HOUSEHOLDER"
drop if labelgrouping == "NONFAMILY HOUSEHOLDS"
drop if labelgrouping == "PERCENT IMPUTED"
drop if labelgrouping == "FAMILIES"

*change the values in each zipcode to numeric
destring zcta590003 zcta590006 zcta590011 zcta590011 zcta590014 zcta590017 zcta590019 zcta590025 zcta590028 zcta590033 zcta590061 zcta590062 zcta590065 zcta590066 zcta590731 zcta591304 zcta591324 zcta591331 zcta591335 zcta591345 zcta591401 zcta591601, replace ignore ("," "-" "(X)")

*Fix the label grouping names
replace labelgrouping = "F Living alone" in 23
replace labelgrouping = "F Not living alone" in 24
replace labelgrouping = "M Living alone" in 26
replace labelgrouping = "M Not living alone" in 27

*reshape the income data for this year
reshape long zcta5, i(labelgrouping) j(zipcode)
rename zcta5 medincome

*create a variable to show what year the data is, helps for appending all of the years later
gen year = 2011

*encode labelgrouping into numeric and then drop labelgrouping, helps with the reshaping command right after
encode labelgrouping, generate(newlabelgrouping)
drop labelgrouping
reshape wide medincome, i(zipcode) j(newlabelgrouping)

*save as its own dta file, allows us to append all of the year together later 
save 2011IncomeByZipcode.dta, replace
clear

*the following code (until line 143), repeats the same things for the other 4 years
import delimited 2012IncomeByZipcode.csv, varnames(1)

drop if labelgrouping == "One race--"
drop if labelgrouping == "HOUSEHOLD INCOME BY RACE AND HISPANIC OR LATINO ORIGIN OF HOUSEHOLDER"
drop if labelgrouping == "HOUSEHOLD INCOME BY AGE OF HOUSEHOLDER"
drop if labelgrouping == "NONFAMILY HOUSEHOLDS"
drop if labelgrouping == "PERCENT IMPUTED"
drop if labelgrouping == "FAMILIES"
destring zcta590003 zcta590006 zcta590011 zcta590011 zcta590014 zcta590017 zcta590019 zcta590025 zcta590028 zcta590033 zcta590061 zcta590062 zcta590065 zcta590066 zcta590731 zcta591304 zcta591324 zcta591331 zcta591335 zcta591345 zcta591401 zcta591601, replace ignore ("," "-" "(X)")

replace labelgrouping = "F Living alone" in 23
replace labelgrouping = "F Not living alone" in 24
replace labelgrouping = "M Living alone" in 26
replace labelgrouping = "M Not living alone" in 27

reshape long zcta5, i(labelgrouping) j(zipcode)
rename zcta5 medincome

gen year = 2012
encode labelgrouping, generate(newlabelgrouping)
drop labelgrouping
reshape wide medincome, i(zipcode) j(newlabelgrouping)

save 2012IncomeByZipcode.dta, replace
clear

import delimited 2013IncomeByZipcode.csv, varnames(1)

drop if labelgrouping == "    One race--"
drop if labelgrouping == "HOUSEHOLD INCOME BY RACE AND HISPANIC OR LATINO ORIGIN OF HOUSEHOLDER"
drop if labelgrouping == "HOUSEHOLD INCOME BY AGE OF HOUSEHOLDER"
drop if labelgrouping == "NONFAMILY HOUSEHOLDS"
drop if labelgrouping == "PERCENT IMPUTED"
drop if labelgrouping == "FAMILIES"
destring zcta590003 zcta590006 zcta590011 zcta590011 zcta590014 zcta590017 zcta590019 zcta590025 zcta590028 zcta590033 zcta590061 zcta590062 zcta590065 zcta590066 zcta590731 zcta591304 zcta591324 zcta591331 zcta591335 zcta591345 zcta591401 zcta591601, replace ignore ("," "-" "(X)")

replace labelgrouping = "F Living alone" in 23
replace labelgrouping = "F Not living alone" in 24
replace labelgrouping = "M Living alone" in 26
replace labelgrouping = "M Not living alone" in 27

reshape long zcta5, i(labelgrouping) j(zipcode)
rename zcta5 medincome

gen year = 2013

encode labelgrouping, generate(newlabelgrouping)
drop labelgrouping
reshape wide medincome, i(zipcode) j(newlabelgrouping)

save 2013IncomeByZipcode.dta, replace
clear

import delimited 2014IncomeByZipcode.csv, varnames(1)

drop if labelgrouping == "    One race--"
drop if labelgrouping == "HOUSEHOLD INCOME BY RACE AND HISPANIC OR LATINO ORIGIN OF HOUSEHOLDER"
drop if labelgrouping == "HOUSEHOLD INCOME BY AGE OF HOUSEHOLDER"
drop if labelgrouping == "NONFAMILY HOUSEHOLDS"
drop if labelgrouping == "PERCENT IMPUTED"
drop if labelgrouping == "FAMILIES"
destring zcta590003 zcta590006 zcta590011 zcta590011 zcta590014 zcta590017 zcta590019 zcta590025 zcta590028 zcta590033 zcta590061 zcta590062 zcta590065 zcta590066 zcta590731 zcta591304 zcta591324 zcta591331 zcta591335 zcta591345 zcta591401 zcta591601, replace ignore ("," "-" "(X)")

replace labelgrouping = "F Living alone" in 23
replace labelgrouping = "F Not living alone" in 24
replace labelgrouping = "M Living alone" in 26
replace labelgrouping = "M Not living alone" in 27

reshape long zcta5, i(labelgrouping) j(zipcode)
rename zcta5 medincome

gen year = 2014
encode labelgrouping, generate(newlabelgrouping)
drop labelgrouping
reshape wide medincome, i(zipcode) j(newlabelgrouping)

save 2014IncomeByZipcode.dta, replace
clear

import delimited 2015IncomeByZipcode.csv, varnames(1)

drop if labelgrouping == "    One race--"
drop if labelgrouping == "HOUSEHOLD INCOME BY RACE AND HISPANIC OR LATINO ORIGIN OF HOUSEHOLDER"
drop if labelgrouping == "HOUSEHOLD INCOME BY AGE OF HOUSEHOLDER"
drop if labelgrouping == "NONFAMILY HOUSEHOLDS"
drop if labelgrouping == "PERCENT IMPUTED"
drop if labelgrouping == "FAMILIES"
destring zcta590003 zcta590006 zcta590011 zcta590011 zcta590014 zcta590017 zcta590019 zcta590025 zcta590028 zcta590033 zcta590061 zcta590062 zcta590065 zcta590066 zcta590731 zcta591304 zcta591324 zcta591331 zcta591335 zcta591345 zcta591401 zcta591601, replace ignore ("," "-" "(X)")

replace labelgrouping = "F Living alone" in 23
replace labelgrouping = "F Not living alone" in 24
replace labelgrouping = "M Living alone" in 26
replace labelgrouping = "M Not living alone" in 27

reshape long zcta5, i(labelgrouping) j(zipcode)
rename zcta5 medincome

gen year = 2015
encode labelgrouping, generate(newlabelgrouping)
drop labelgrouping
reshape wide medincome, i(zipcode) j(newlabelgrouping)

save 2015IncomeByZipcode.dta, replace
clear

*append the 5 years of income data
use 2011IncomeByZipcode.dta
append using 2012IncomeByZipcode.dta
append using 2013IncomeByZipcode.dta
append using 2014IncomeByZipcode.dta
append using 2015IncomeByZipcode.dta

*save this appended income data as a new dta file, used later to merge with the domestic violence data
save AllYearsIncomeByZipcode.dta, replace
clear

*import the domestic violence original data files; may need to change the path to match where it is on the computer that this is run on
import delimited LAPD_Calls_for_Service_2011.csv
save LAPD_Calls_for_Service_2011.dta, replace
clear
import delimited LAPD_Calls_for_Service_2012.csv
save LAPD_Calls_for_Service_2012.dta, replace
clear
import delimited LAPD_Calls_for_Service_2013.csv
save LAPD_Calls_for_Service_2013.dta, replace
clear
import delimited LAPD_Calls_for_Service_2014.csv
save LAPD_Calls_for_Service_2014.dta, replace
clear
import delimited LAPD_Calls_for_Service_2015.csv
save LAPD_Calls_for_Service_2015.dta, replace
clear
use LAPD_Calls_for_Service_2011.dta

*append the police dispatch data from 2011-2015
append using LAPD_Calls_for_Service_2012.dta
append using LAPD_Calls_for_Service_2013.dta
append using LAPD_Calls_for_Service_2014.dta
append using LAPD_Calls_for_Service_2015.dta

*create zipcode variable that matches the location of the area occurred to the correct zipcode, allows us to later merge this with the income data
gen zipcode = 0
replace zipcode = 90003 if areaoccurred == "77th Street"
replace zipcode = 90014 if areaoccurred == "Central"
replace zipcode = 91324 if areaoccurred == "Devonshire"
replace zipcode = 91331 if areaoccurred == "Foothill"
replace zipcode = 90731 if areaoccurred == "Harbor"
replace zipcode = 90033 if areaoccurred == "Hollenbeck"
replace zipcode = 90028 if areaoccurred == "Hollywood"
replace zipcode = 91345 if areaoccurred == "Mission"
replace zipcode = 91601 if areaoccurred == "N Hollywood"
replace zipcode = 90011 if areaoccurred == "Newton"
replace zipcode = 90065 if areaoccurred == "Northeast"
replace zipcode = 90006 if areaoccurred == "Olympic"
replace zipcode = 90066 if areaoccurred == "Pacific"
replace zipcode = 90017 if areaoccurred == "Rampart"
replace zipcode = 90061 if areaoccurred == "Southeast"
replace zipcode = 90062 if areaoccurred == "Southwest"
replace zipcode = 91304 if areaoccurred == "Topanga"
replace zipcode = 91401 if areaoccurred == "Van Nuys"
replace zipcode = 90025 if areaoccurred == "West LA"
replace zipcode = 91335 if areaoccurred == "West Valley"
replace zipcode = 90019 if areaoccurred == "Wilshire"

*Create new variable called year
generate year = 0

*Set the values for year based on how it corresponds to the dispatch date
replace year = 2011 if substr(dispatchdate, 7, 4) == "2011"
replace year = 2012 if substr(dispatchdate, 7, 4) == "2012"
replace year = 2013 if substr(dispatchdate, 7, 4) == "2013"
replace year = 2014 if substr(dispatchdate, 7, 4) == "2014"
replace year = 2015 if substr(dispatchdate, 7, 4) == "2015"

*totals the number of DV calls, instead of listing the individual calls
gen numDV = 0
replace numDV = 1 if strmatch(calltypedescription, "*DOM VIOL*") | strmatch(calltypedescription, "*FAMILY*")
order zipcode year numDV
sort zipcode year
collapse (sum) numDV, by(zipcode year)

*save this as its own dta file to be merged with income data later
save LAPD_Calls_for_Service_base.dta, replace
clear

*open the income data
use AllYearsIncomeByZipcode.dta

*rename all of the variable names to the corresponding category to make it more readable, current name does not indicate the category of median income
rename medincome1 medincomeFLivingAlone
rename medincome2 medincomeFNotLivingAlone
rename medincome3 medincomeHispLatAnyRace
rename medincome4 medincomeHouseholds
rename medincome5 medincomeMLivingAlone
rename medincome6 medincomeMNotLivingAlone
rename medincome7 medincomeTwoPlusRaces
rename medincome8 medincomeWhiteAloneNotHispLat
rename medincome9 medincome15to24years
rename medincome10 medincome25to44years
rename medincome11 medincome45to64years
rename medincome12 medincome65orOlder
rename medincome13 medincomeNativeAmerican
rename medincome14 medincomeAsian
rename medincome15 medincomeBlack
rename medincome16 medincomeFamilies
rename medincome17 medincomeFamIncPast12Months
rename medincome18 medincomeFemaleHouseholder
rename medincome19 medincomeFemaleHouseNoHusband
rename medincome20 medincomeHouseIncPast12Months
rename medincome21 medincomeMaleHouseholder
rename medincome22 medincomeMaleHouseNoWife
rename medincome23 medincomeMarriedCoupleFam
rename medincome24 medincomeNativeHawaiianPacIs
rename medincome25 medincomeNonfamHouseholds
rename medincome26 medincomeNonfamIncPast12Months
rename medincome27 medincomeOtherRace
rename medincome28 medincomeWhite
rename medincome29 medincomeNoChildren
rename medincome30 medincomeWithChildren

*save the file
save AllYearsIncomeByZipcode_beforemerge.dta, replace

*merge with the DV data
merge 1:1 zipcode year using LAPD_Calls_for_Service_base.dta
drop _merge

*save as the base.dta file

save base.dta, replace
