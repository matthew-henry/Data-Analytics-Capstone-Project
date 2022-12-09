mkdir 2016
cd 2016
aws s3 sync "s3://noaa-gsod-pds/2016" .
cd .. 
mkdir 2017
cd 2017
aws s3 sync "s3://noaa-gsod-pds/2017" .
cd ..
mkdir 2018
cd 2018
aws s3 sync "s3://noaa-gsod-pds/2018" .
cd ..
mkdir 2019
cd 2019
aws s3 sync "s3://noaa-gsod-pds/2019" .
cd ..
mkdir 2020
cd 2020
aws s3 sync "s3://noaa-gsod-pds/2020" .
cd ..
mkdir 2021
cd 2021
aws s3 sync "s3://noaa-gsod-pds/2021" .
cd ..
mkdir 2022
cd 2022
aws s3 sync "s3://noaa-gsod-pds/2022" .
