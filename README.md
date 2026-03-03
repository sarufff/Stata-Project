# Stata-Project
# README

**In this paper, we discuss that changes in median household income will alter reported instances of domestic violence in the United States. Specifically, we propose that an increase in median household income will result in decreased rates of domestic violence.**

## Section 1: Repository Structure

- **Original Data Folder** — Contains `base.dta`, original data files, and the following:
  - `base.dta` — Fully processed and cleaned data file used to generate analysis data.
  - **Original data files** — Downloaded CSV files used in the analysis.

- **Command Files Folder**
  - `processing.do` — Transforms the original data into the base data.
  - `construction.do` — Transforms the base data into the analysis data.
  - `analysis.do` — Produces all empirical results from the analysis data.

- **Analysis Data Folder**
  - `analysis.dta` — Data used to run the regression.

- **Documents Folder**
  - DV Research Paper
  - Read Me File

---

## Section 2: Instructions for Replicating the Study

**Requirements:** Stata Version 17.0 and the `asdoc` package (outputs tables to Microsoft Word).  
**Working directory:** Set to the `Original Data` folder. Copy all original data files and `processing.do` into this folder before beginning.

### Step 1 — Run `processing.do`

Uses all 10 original data files and creates the following outputs:

- `2011IncomeByZipcode.dta`
- `2012IncomeByZipcode.dta`
- `2013IncomeByZipcode.dta`
- `2014IncomeByZipcode.dta`
- `2015IncomeByZipcode.dta`
- `AllYearsIncomeByZipcode.dta`
- `LAPD_Calls_for_Service_2011.dta`
- `LAPD_Calls_for_Service_2012.dta`
- `LAPD_Calls_for_Service_2013.dta`
- `LAPD_Calls_for_Service_2014.dta`
- `LAPD_Calls_for_Service_2015.dta`
- `LAPD_Calls_for_Service_base.dta`
- `AllYearsIncomeByZipcode_beforemerge.dta`
- `base.dta`

### Step 2 — Run `construction.do`

Uses `base.dta` and creates:
- `analysis.dta`
- `MyFile.doc` — Contains summary stats and variable descriptions tables.

### Step 3 — Run `analysis.do`

Uses `analysis.dta` and outputs tables with results from the Fixed Effects regression.
