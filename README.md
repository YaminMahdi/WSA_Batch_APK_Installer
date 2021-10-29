# WSA_Batch_APK_Installer
Quick Multiple APK Installer for WSA(Windows Subsystem for Android).

# Video Tutorial:
[![Watch the video]((https://user-images.githubusercontent.com/48239104/139420714-a7793858-4f0f-4d34-95a5-93c067f68c24.png)](https://youtu.be/taYi4qC2qhs)

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
>
> * Added **Application Name** beside **Package Name**.

# Bug fix:

> * **DOWNGRADE** was not working before. 

# Screenshot:
**DOWNGRADEING-**

![image](https://user-images.githubusercontent.com/48239104/139204924-53df877f-039c-40d8-a03b-d8a86d037219.png)

**UPGRADEING-**

![image](https://user-images.githubusercontent.com/48239104/139204886-cf831185-24b3-43f0-896c-1035b896fdeb.png)

**NEW INSTALLATIONs-**

![image](https://user-images.githubusercontent.com/48239104/139204805-5b2bc9f0-74bd-4ed2-93cc-38675299acae.png)

**NOT INSTALLING-**

![image](https://user-images.githubusercontent.com/48239104/139204547-624e7df5-d8a6-46c9-8c8d-e0326dcae64b.png)

