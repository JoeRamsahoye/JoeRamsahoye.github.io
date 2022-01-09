

clear 
set more off

cd "/Users/joeramsahoye/Library/Mobile Documents/com~apple~CloudDocs/Documents/University/Year 3/Dissertaton/Section 2 and 3"


capture log close
log using "Extension1.log",replace


import excel "/Users/joeramsahoye/Library/Mobile Documents/com~apple~CloudDocs/Documents/University/Year 3/Dissertaton/Crypto 15m (Clean).xlsx", firstrow case(lower)



describe 


sum

format date %td


tsset date


sort date


gen time = _n
tsset time

gen btcdailyreturn = ((btcclose - btcclose[_n-1])/btcclose[_n-1])*100


*LOOP*
foreach var of varlist ethclose-xlmclose {
gen `var'dailyreturn = ((`var' - `var'[_n-1])/`var'[_n-1])*100
}









log close
