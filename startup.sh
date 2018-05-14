#!/bin/bash
cd /media/david/Drive/Binder/Csc_336/Assignments/Group\ Project/Code/sql-crypto-data-filler
echo first step executing
mysql -u root -p23058319 < firstStep.sql
npm start &
sleep 10
echo last step executing
mysql -u root -p23058319 < lastStep.sql