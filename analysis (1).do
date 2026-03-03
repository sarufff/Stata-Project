*analysis.do - Group 24; date created 5/1

*set working directory; may need to change the path to match where it is on the computer that this is run on
cd D:\Files\UVA\Spring2023\ECON3720\OriginalData

*open the analysis.dta file
use analysis.dta

*run fixed effects regression and create Word document with table
xtset zipcode year
xtreg numDV blackratio asianratio youngageratio oldageratio familyratio medincomeHouseholds, fe
asdoc xtreg

*run F-tests between the race ratios and then between the age ratios to test for joint significance
asdoc test blackratio asianratio
asdoc test youngageratio oldageratio