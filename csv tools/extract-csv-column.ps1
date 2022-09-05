param ([string] $file, [int] $test)

$csv_data = import-csv $file 
$select_column = "import_data"
$filename = [io.path]::GetFileNameWithoutExtension($file) + "_output.json"

$csv_data | select -ExpandProperty $select_column | Out-File -FilePath $filename
