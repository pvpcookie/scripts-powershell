# powershell scripts

## CSV Tools

Simple tools to assist in working iwth CSV fiels 

### CSV splitter Usage:

params: 
1. file: pathe to file
2. linelimit: max lines per csv file

```
.\csv-splitter.ps1 -file .\my_file.csv -linelimit 10
```
### Extract csv column Usage:

params: 
1. file: pathe to file
2. column: column to extract  
3. output: file extention to use IE .json 

```
.\extract-csv-column.ps1 -file .\my_file.csv -column json_data_column -output extracted.json
```
