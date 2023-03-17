
## Writer : ikm126 / Operation Team Sundsvall
## FileName : sql_file_aggregator.sh
## Last Modifation Date : 2022-10-14
## Describtion : it aggregated all file which needed for instalionons


#!/bin/bash
cd 0
cd DB
## find all sql file witout revert name .
find  -name  "*.sql" -not -name "*revert.sql" > SQLresult.sh
## remove 2 fist character from file name .
sed -i 's/^..//' SQLresult.sh
## add @ in the beggineg of the file name
sed  -i 's/^/@/' SQLresult.sh
## Add line prompt line ## 

while IFS= read -r line
do
  # take action on $line #
echo "prompt '$line' had been staeted"  >> final_SQL_Query_SqlPlus.sh
  echo "$line"  >> final_SQL_Query_SqlPlus.sh
  echo "prompt '$line' had been finished"  >> final_SQL_Query_SqlPlus.sh
        done <  SQLresult.sh

## Make final_SQL_Query_SqlPlus.sh exutable ##

chmod 755 final_SQL_Query_SqlPlus.sh

## clean up ""

rm SQLresult.sh
