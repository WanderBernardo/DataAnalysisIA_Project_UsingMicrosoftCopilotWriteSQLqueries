#Get the directory actual
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#File exit with all sql
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Check if file already exists, if exists delete
if (Test-Path $outputFile){
	Remove-Item $outputFile
}

#Get content of the files
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

#Concatenate files
foreach($file in $sqlFiles){
	Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
	"GO"| Out-File -Append -FilePath $OutputFile
}

Write-Host "Todos Arquivos foram combinados $outputFile"