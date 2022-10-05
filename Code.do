import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita) #creating the outcome variable (log(GDP)) using GDP 
keep if city == "London" | city == "Paris" #limiting dataset to 2012 Olympics only
keep if year < 2014 & year > 2009  #setting the bandwidth 
gen post = . #creating a "post" variable to indicate the periods before and after treatment
replace post = 0 if year < 2012 #definining pre-treatment period 
replace post = 1 if year >= 2012 #definining post-treatment period 
gen londonolympics = . #creating a dummy variable 
replace londonolympics = 0 if city != "London" #Control Group (Paris)
replace londonolympics = 1 if city == "London" #Treatment Group (London)
reg loggdp post##londonolympics #calculating regression coefficients

import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita)
keep if city == "Athens" | city == "Rome"
keep if year < 2006 & year > 2001  
gen post = .
replace post = 0 if year < 2004
replace post = 1 if year >= 2004
gen athensolympics = . 
replace athensolympics = 0 if city != "Athens"
replace athensolympics = 1 if city == "Athens" 
reg loggdp post##athensolympics

import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita)
keep if city == "Beijing" | city == "Sydney"
keep if year < 2002 & year > 1997  
gen post = .
replace post = 0 if year < 2000
replace post = 1 if year >= 2000
gen sydneyolympics = . 
replace sydneyolympics  = 0 if city != "Sydney"
replace sydneyolympics = 1 if city == "Sydney" 
reg loggdp post##sydneyolympics 


import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita)
keep if city == "Atlanta" | city == "Athens"
keep if year < 1998 & year > 1993 
gen post = .
replace post = 0 if year < 1996
replace post = 1 if year >= 1996
gen atlantaolympics = . 
replace atlantaolympics = 0 if city != "Atlanta"
replace atlantaolympics= 1 if city == "Atlanta" 
reg loggdp post##atlantaolympics


import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita)
keep if city == "Seoul" | city == "Nagoya"
keep if year < 1990 & year > 1985 
gen post = .
replace post = 0 if year < 1988
replace post = 1 if year >= 1988
gen seoulolympics = . 
replace seoulolympics  = 0 if city != "Seoul"
replace seoulolympics = 1 if city == "Seoul" 
reg loggdp post##seoulolympics 


import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita)
keep if city == "Moscow" | city == "Los Angels"
keep if year < 1982 & year > 1977 
gen post = .
replace post = 0 if year < 1980
replace post = 1 if year >= 1980
gen moscowolympics = . 
replace moscowolympics  = 0 if city != "Moscow"
replace moscowolympics = 1 if city == "Moscow" 
reg loggdp post##moscowolympics


import delimited "/Users/marinaberdikhanova/Downloads/SS154_compiled dataset - Sheet1.csv"
gen loggdp = log(gdppercapita)
keep if city == "Moscow" | city == "Montreaul"
keep if year < 1978 & year > 1973 
gen post = .
replace post = 0 if year < 1976
replace post = 1 if year >= 1976
gen montrealolympics = . 
replace montrealolympics = 0 if city != "Montreaul"
replace montrealolympics = 1 if city == "Montreaul" 
reg loggdp post##montrealolympics
