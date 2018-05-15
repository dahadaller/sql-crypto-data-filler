#!/bin/bash
cd /media/david/Drive/Binder/Csc_336/Assignments/Group\ Project/Code/sql-crypto-data-filler
echo first step executing
#mysql -u root -p23058319 < firstStep.sql
mysql -ukhelif96 -p'mohamed96' -h'crypto-arbitrage.c0maepcu8osq.us-east-1.rds.amazonaws.com' < firstStep.sql
sleep 30
npm start &
sleep 30
echo last step executing
# mysql -u root -p23058319 < lastStep.sql
mysql -ukhelif96 -p'mohamed96' -h'crypto-arbitrage.c0maepcu8osq.us-east-1.rds.amazonaws.com' < lastStep.sql