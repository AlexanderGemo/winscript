ipconfig
get-process
netstat -ano
Get-CimInstance Win32_OperatingSystem | Select-Object $Properties | Format-Table -AutoSize
$originalFiles = Get-ChildItem "C:\Users\ccdc\Desktop\script_reports" -Filter *.txt
$x = 1
ForEach ($originalFile in $originalFILes) {
	Rename-Item -Path $originalFile.Fullname -NewName (($originalFile.Directory.FullName) + "\" + $x + $originalFile.Name)
	$x++
	}
ipconfig | Out-File C:\Users\ccdc\Desktop\script_reports\script_report.txt
get-process | Out-File -Append C:\Users\ccdc\Desktop\script_reports\script_report.txt
netstat -ano | Out-File -Append C:\Users\ccdc\Desktop\script_reports\script_report.txt
Get-CimInstance Win32_OperatingSystem | Select-Object $Properties | Format-Table -AutoSize | Out-File -Append C:\Users\ccdc\Desktop\script_reports\script_report.txt
