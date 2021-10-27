echo "# # # # # # # # # # # # # #"
echo "# # APK Installer by yk # #"
echo "# # # # # # # # # # # # # #"
#Read-Host
#<#
adb devices
adb disconnect
adb connect 127.0.0.1:58526
adb devices


$files = Get-Item *.apk
$count = 0
foreach ($apks in $files.Name)
{
	if ( $count -ne 0 )
	{
		echo ""
	}
	echo "------------------------------------------"
	$count++;
	echo "Installing Apk No.- $count. `n`t($apks)`n"
	adb install $apks;
}
echo "`n------------------------------------------"

echo "$count APKS installed from this folder.`n`nOk, tata, by by."
adb disconnect
echo "Press any key to continue . . ."
[Console]::ReadKey()
##>

