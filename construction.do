*construction.do - Group 24; date created: 4/30
*set working directory; may need to be changed to the path; may need to change the path to match where it is on the computer that this is run on
cd D:\Files\UVA\Spring2023\ECON3720\OriginalData

*open the base.dta file
use base.dta

*keep only the variables that we are using in our regression
keep *Black *Asian *45to64years *25to44years *Families *Households numDV zipcode year
drop *NonfamHouseholds

*generate the ratios for income that we are using
gen blackratio = medincomeBlack / medincomeHouseholds
gen asianratio = medincomeAsian / medincomeHouseholds
gen youngageratio = medincome25to44years / medincomeHouseholds
gen oldageratio = medincome45to64years/ medincomeHouseholds
gen familyratio = medincomeFamilies / medincomeHouseholds

*create Word document with the summary stats and variable descriptions tables
asdoc sum
asdoc describe

*save as the analysis.dta file
save analysis.dta, replace
