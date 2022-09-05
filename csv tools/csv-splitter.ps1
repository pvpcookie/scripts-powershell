param ($file, [int] $linelimit )


$InputFilename = Get-Content "$file"
$OutputFilenamePattern = 'output_done_'
$LineLimit = $linelimit
$line = 1
$i = 0
$file = 0
$start = 0

while ($line -le $InputFilename.Length) {

	if ($i -eq $LineLimit -Or $line -eq $InputFilename.Length) {

		$file++
		$Filename = "$OutputFilenamePattern$file.csv"
		$InputFilename[$start..($line-1)] | Out-File $Filename -Force
		$start = $line;
		$i = 0
		#Write-Host "Cleaning $Filename"
		#$InputFilenameCleaned = (Get-Content $Filename -Raw) -Replace '""', '\"' | Set-Content $Filename
		Write-Host "split $Filename"

	}

	$i++;
	$line++

}
