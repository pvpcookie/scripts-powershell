param ([string] $file, [string] $column, [string] $output)

$csv_data = import-csv $file 
$select_column = $column
$filename = [io.path]::GetFileNameWithoutExtension($file) + "_" + $output

$csv_data | select -ExpandProperty $select_column | Out-File -FilePath $filename
