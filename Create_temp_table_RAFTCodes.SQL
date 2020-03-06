-- Part D RAFT Codes
If Object_ID('tempdb..#RAFTCodes') Is Not Null Drop Table #RAFTCodes
Select 'D1' As RAFTCode, Cast('Community Non-Low Income Continuing Enrollee' As VarChar(64)) As RAFTCodeDescr Into #RAFTCodes
Insert Into #RAFTCodes Select 'D2','Community Low Income Continuing Enrollee'
Insert Into #RAFTCodes Select 'D3','Institutional Continuing Enrollee'
Insert Into #RAFTCodes Select 'D4','New Enrollee Community Non-Low Income Non-ESRD'
Insert Into #RAFTCodes Select 'D5','New Enrollee Community Non-Low Income ESRD'
Insert Into #RAFTCodes Select 'D6','New Enrollee Community Low Income Non-ESRD'
Insert Into #RAFTCodes Select 'D7','New Enrollee Community Low Income ESRD'
Insert Into #RAFTCodes Select 'D8','New Enrollee Institutional Non-ESRD'
Insert Into #RAFTCodes Select 'D9','New Enrollee Institutional ESRD'
Insert Into #RAFTCodes Select 'P1','PACE New Enrollee Community Low Income Non-ESRD'
Insert Into #RAFTCodes Select 'P2','PACE New Enrollee Community Non-Low Income Non-ESRD'
Insert Into #RAFTCodes Select 'P3','PACE New Enrollee Institutional Non-ESRD'
Insert Into #RAFTCodes Select 'P4','PACE New Enrollee Institutional ESRD'
Insert Into #RAFTCodes Select 'P5','PACE New Enrollee Community Low Income ESRD'
Insert Into #RAFTCodes Select 'P6','PACE New Enrollee Community Non-Low Income ESRD'
Insert Into #RAFTCodes Select 'P7','PACE Community Non-Low Income CONTINUING Enrollee'
Insert Into #RAFTCodes Select 'P8','PACE Community Low Income Continuing Enrollee'
Insert Into #RAFTCodes Select 'P9','PACE Institutional Continuing Enrollee'

Create Index ix_RAFTCode On #RAFTCodes(RAFTCode)

Select * From #RAFTCodes
