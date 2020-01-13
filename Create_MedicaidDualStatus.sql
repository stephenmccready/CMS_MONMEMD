If OBJECT_ID('tempdb..#MedicaidDualStatus') Is Not Null Drop Table #MedicaidDualStatus
Select '01' As MedicaidDualStatusCode, 'Eligible - entitled to Medicare- QMB only (Partial Dual)' As MedicaidDualStatus Into #MedicaidDualStatus
Insert Into #MedicaidDualStatus Select '02','Eligible - entitled to Medicare- QMB AND Medicaid coverage (Full Dual)'
Insert Into #MedicaidDualStatus Select '03','Eligible - entitled to Medicare- SLMB only (Partial Dual)'
Insert Into #MedicaidDualStatus Select '04','Eligible - entitled to Medicare- SLMB AND Medicaid coverage (Full Dual)'
Insert Into #MedicaidDualStatus Select '05','Eligible - entitled to Medicare- QDWI (Partial Dual)'
Insert Into #MedicaidDualStatus Select '06','Eligible - entitled to Medicare- Qualifying individuals (Partial Dual)'
Insert Into #MedicaidDualStatus Select '08','Eligible - entitled to Medicare- Other Dual Eligibles (Non QMB, SLMB, QDWI or QI) with Medicaid coverage (Full Dual)'
Insert Into #MedicaidDualStatus Select '09','Eligible - entitled to Medicare – Other Dual Eligibles but without Medicaid coverage (Non-Dual)'
Insert Into #MedicaidDualStatus Select '10','Other Full Dual'
Insert Into #MedicaidDualStatus Select '99','Unknown'

Create Index ix_MedicaidDualStatusCode On #MedicaidDualStatus(MedicaidDualStatusCode)
