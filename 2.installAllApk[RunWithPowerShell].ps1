Write-Host "# # # # # # # # # # # # # # # # # # # # #"
Write-Host "# # Batch APK Installer for WSA by yk # #"
Write-Host "# # # # # # # # # # # # # # # # # # # # #"
#Read-Host

tools.\adb devices
tools.\adb disconnect
tools.\adb connect 127.0.0.1:58526
tools.\adb devices


$files = Get-Item *.apk
$count = 0
$inCount = 0
foreach ($apks in $files.Name)
{
	if ( $count -ne 0 )
	{
		Write-Host ""
	}
	Write-Host "------------------------------------------"
	$count++;
	Write-Host "Found Apk No.- $count `nFile Name    : $apks"
	
#geting App Name
	$aNm= tools.\aapt dump badging $apks | Select-String "application-label:"
	$aNm= $aNm.ToString()
	$in = $aNm.IndexOf('''')+1
	$nm=  ''
	for( $i=$in; ; $i++)
	{
		if($aNm[$i] -eq '''')
		{
			break
		}
		$nm = $nm.Insert($i-$in,$aNm[$i]);
	}
	Write-Host "App Name     : $nm"
	#./aapt dump badging K:\wsa\apps\ZenUI_Launcher_2.0.1.10_151210.apk | Select-String "application-label:"

	$yk = tools.\aapt dump badging $apks | Select-String "package: name="
	$yk = $yk.ToString()

#geting package name
	$pac=''
	for($i=15; ; $i++)
	{
		if($yk[$i] -eq '''')
		{
			break
		}
		$pac = $pac.Insert($i-15,$yk[$i]);
	}
	Write-Host "Package Name : $pac"

#geting version
	$in=$yk.IndexOf("versionName='")+13
	$ver=''
	for( $i=$in; ; $i++)
	{
		if($yk[$i] -eq '''')
		{
			break
		}
		$ver = $ver.Insert($i-$in,$yk[$i]);
	}
	Write-Host "Version      : $ver"

#installing apk
	$x= tools.\adb shell 'pm list packages'
	if($x.Contains("package:$pac"))
	{
		Write-Host "A version of this APK is already installed.`nTring to update..`nGeting Version.."
		$inVer= tools.\adb shell dumpsys package $pac | Select-String "versionName"
		$inVer= $inVer.ToString()
		$inVer= $inVer.Substring($inVer.IndexOf("=")+1)
		Write-Host "Installed Version: $inVer"
		if($inVer.equals($ver))
		{
			Write-Host "APK Installation Failed.`nSame vesion is already installed."
			Write-Host "You can only UPGRADE or DOWNGRADE a APK."
		}
		else
		{
			Write-Host "Changing APK version ($inVer to $ver)"
			#[double]::TryParse($ver, [ref]$ver)
			#[double]::TryParse($inVer, [ref]$ver)
			#$ver = [double]$ver
			#$inVer = [double]$ver
			if($ver -le $inVer)
			{
				Write-Host "Downgrading.."
				tools.\adb install -d -r $apks;
			}
			else
			{
				Write-Host "Upgrading.."
				tools.\adb install $apks;
			}
			$inCount++;
		}
	}
	else
	{
		Write-Host "Installing $nm.."
		tools.\adb install $apks;
		$inCount++;
	}
}
Write-Host "`n------------------------------------------"

Write-Host "$count APKS found in this folder. `n$inCount Installed.`n`nOk, tata, by by."
tools.\adb disconnect
Write-Host "Press any key to continue . . ."
[Console]::ReadKey()




<#

$yk = .\aapt dump badging D:\wsa\apps\flite.apk | Select-String "package: name="
Write-Host $yk
Write-Host -match ("com.facebook.lite")
$x.GetType()
#>