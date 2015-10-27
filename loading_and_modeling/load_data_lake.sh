tail -n +2 "HCAHPS - Hospital.csv" > hcahps_hosp.csv
tail -n +2 "HCAHPS - State.csv" > hcahps_state.csv
tail -n +2 "HCAHPS - National.csv" > hcahps_nat.csv

tail -n +2 "Timely and Effective Care - Hospital.csv" > care_hosp.csv
tail -n +2 "Timely and Effective Care - State.csv" > care_state.csv
tail -n +2 "Timely and Effective Care - National.csv" > care_nat.csv

sudo adduser carson
su - carson
cd
mkdir hospital_compare
cd hospital_compare

scp -i ****.pem hcahps_hosp.csv root@****.compute-1.amazonaws.com:~/home/carson/hospital_compare
scp -i ****.pem hcahps_state.csv root@****.compute-1.amazonaws.com:~/home/carson/hospital_compare
scp -i ****.pem hcahps_nat.csv root@****.compute-1.amazonaws.com:~/home/carson/hospital_compare

scp -i ****.pem care_hosp.csv root@****.compute-1.amazonaws.com:~/home/carson/hospital_compare
scp -i ****.pem care_state.csv root@****.compute-1.amazonaws.com:~/home/carson/hospital_compare
scp -i ****.pem care_nat.csv root@****.compute-1.amazonaws.com:~/home/carson/hospital_compare

mkdir hcahps_hosp
mkdir hcahps_state
mkdir hcahps_nat
mkdir care_hosp
mkdir care_state
mkdir care_nat

mv hcahps_hosp.csv hcahps_hosp
mv hcahps_state.csv hcahps_state
mv hcahps_nat.csv hcahps_nat

mv care_hosp.csv care_hosp
mv care_state.csv care_state
mv care_nat.csv care_nat