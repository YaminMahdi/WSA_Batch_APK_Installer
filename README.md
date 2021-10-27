# WSA_Batch_APK_Installer
Quick Multiple APK Installer for WSA(Windows Subsystem for Android).

# Requirment:
> * WSA Installed.
> 
> * Devloper Mode Enabled.
> 
> * Copy the **IP Address** from WSA to enable **ADB Sideload**
> 
> * ADB Installed. [Not needed anymore.]

# Steps:

> * Clone the Repo or Download & UnZip.
> 
> * Copy all APKs to the **ROOT FOLDER** of this repo. 
> 
> * Run **1.EnablePowerShell[RunAsAdministor].cmd once** to enable **ExecutionPolicy** for PowerShell.
> 
> * Now run this Everytime **2.installAllApk[RunWithPowerShell].ps1** to install all APKs from **ROOT FOLDER**.

# New:

> * Already installed APKs from **ROOT FOLDER** will not install again.
> 
> * You can only **UPGRADE** or **DOWNGRADE** a APK by putting another version of that installed APK in **ROOT FOLDER**.

# Screenshot:

![image](https://user-images.githubusercontent.com/48239104/139120038-7f50f24c-eb18-48e7-880a-312e86ee7276.png)
