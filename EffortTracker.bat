@echo off
Title Daily Effort Tracker
setlocal enabledelayedexpansion

Echo Submit your daily efforts for %date%
echo.
echo ***********************************************
echo.
SET /P Tester=Tester First Name:
echo.
SET /P TodaysDate=Enter Date [MM/DD/YYYY]:

Set entryCount=zero

:newEntry
echo.

set months=("January","February","March","April","May","June","July","August","September","October","November","December")

:allowedTrain
SET /P TestTrain=Test Train [Month]:

for %%x in %months% do (
if /i "%TestTrain%" == %%x (
GOTO allowedOS))

echo.
echo Choose a valid month for test train 
GOTO allowedTrain

:allowedOS
echo.
SET /P OS=OS [Enter 'Other' if not applicable]:
echo.

echo Select the device under test:
echo A - Surface Book
echo B - Surface Book 2
echo C - Surface Book 3
echo D - Surface Pro 3
echo E - Surface Pro 4
echo F - Surface Pro 5
echo G - Surface Pro 6
echo H - Surface Pro 7
echo I - Surface Go
echo J - Surface Go 2
echo K - Surface Pro X
echo L - Surface Laptop 3
echo M - Surface Laptop 2
echo N - Surface Laptop
echo O - Surface Studio
echo P - Surface Studio 2
Choice /n /c ABCDEFGHIJKLMNOP

if ERRORLEVEL == 1 Set Device=Surface Book
if ERRORLEVEL == 2 Set Device=Surface Book 2
if ERRORLEVEL == 3 Set Device=Surface Book 3
if ERRORLEVEL == 4 Set Device=Surface Pro 3
if ERRORLEVEL == 5 Set Device=Surface Pro 4
if ERRORLEVEL == 6 Set Device=Surface Pro 5
if ERRORLEVEL == 7 Set Device=Surface Pro 6
if ERRORLEVEL == 8 Set Device=Surface Pro 7
if ERRORLEVEL == 9 Set Device=Surface Go
if ERRORLEVEL == 10 Set Device=Surface Go 2
if ERRORLEVEL == 11 Set Device=Surface Pro X
if ERRORLEVEL == 12 Set Device=Surface Laptop 3
if ERRORLEVEL == 13 Set Device=Surface Laptop 2
if ERRORLEVEL == 14 Set Device=Surface Laptop
if ERRORLEVEL == 15 Set Device=Surface Studio
if ERRORLEVEL == 16 Set Device=Surface Studio 2

echo Selected:%Device%
echo.

if "%Device%"=="Surface Book 3" (
	echo Select the SKU under test:
	echo A - 13in i5 intel
	echo B - 13in i7 NvidiaGTX1650
	echo C - 15in i7 NvidiaGTX1660
	echo D - 15in i7 NvidiaRTX3000
	Choice /n /c ABCD

	if ERRORLEVEL == 1 Set sku=13in i5 intel
	if ERRORLEVEL == 2 Set sku=13in i7 NvidiaGTX1650
	if ERRORLEVEL == 3 Set sku=15in i7 NvidiaGTX1660
	if ERRORLEVEL == 4 Set sku=15in i7 NvidiaRTX3000
	Echo Selected: %sku%
	echo.
	GOTO TestInfo


)
if "%Device%"=="Surface Book 2" (
	echo Select the SKU under test:
	echo A - 13in i5 intel [No Nvidia]
	echo B - 13in i7 Nvidia 
	echo C - 15in i7 Nvidia
	Choice /n /c ABC

	if ERRORLEVEL == 1 Set sku=13in i5 intel [No Nvidia]
	if ERRORLEVEL == 2 Set sku=13in i7 Nvidia 
	if ERRORLEVEL == 3 Set sku=15in i7 Nvidia
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Laptop 3" (
	echo Select the SKU under test:
	echo A - 13in i5 8GB
	echo B - 13in i7 16GB
	echo C - 15in AMD Ryzen 5-Vega 9 8GB
	echo D - 15in AMD Ryzen 7-Vega 11 16GB
	Choice /n /c ABCD

	if ERRORLEVEL == 1 Set sku=13in i5 8GB
	if ERRORLEVEL == 2 Set sku=13in i7 16GB
	if ERRORLEVEL == 3 Set sku=15in AMD Ryzen 5-Vega 9 8GB
	if ERRORLEVEL == 4 Set sku=15in AMD Ryzen 7-Vega 11 16GB
	Echo Selected: %sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Laptop 2" (
	echo Select the SKU under test:
	echo A - i5 8GB
	echo B - i7 8GB
	echo C - i7 16GB
	Choice /n /c ABC

	if ERRORLEVEL == 1 Set sku=i5 8GB
	if ERRORLEVEL == 2 Set sku=i7 8GB
	if ERRORLEVEL == 3 Set sku=i7 16GB
	Echo Selected: %sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Laptop" (
	echo Select the SKU under test:
	echo A - M3
	echo B - i5 4GB
	echo C - i5 8GB
	echo D - i7 8GB
	Choice /n /c ABCD

	if ERRORLEVEL == 1 Set sku=M3
	if ERRORLEVEL == 2 Set sku=i5 4GB
	if ERRORLEVEL == 3 Set sku=i5 8GB
	if ERRORLEVEL == 4 Set sku=i7 8GB
	Echo Selected: %sku%
	echo.
	GOTO TestInfo


)
if "%Device%"=="Surface Pro 5" (
	echo Select the SKU under test:
	Echo A - i5 intel
	echo B - i7 intel
	echo C - i5 intel LTE
	echo D - M3
	Choice /n /c ABCD

	if ERRORLEVEL == 1 Set sku=i5 intel
	if ERRORLEVEL == 2 Set sku=i7 intel
	if ERRORLEVEL == 3 Set sku=i5 intel LTE
	if ERRORLEVEL == 4 Set sku=M3
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Pro 3" (
	echo Select the SKU under test:
	Echo A - i5 intel
	echo B - S3
	Choice /n /c AB

	if ERRORLEVEL == 1 Set sku=i5 intel
	if ERRORLEVEL == 2 Set sku=S3
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Pro 4" (
	echo Select the SKU under test:
	Echo A - i5 intel
	echo B - i7 intel
	Choice /n /c AB

	if ERRORLEVEL == 1 Set sku=i5 intel
	if ERRORLEVEL == 2 Set sku=i7 intel
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Pro 6" (
	echo Select the SKU under test:
	Echo A - i5 8GB
	echo B - i7 8GB
	echo C - i7 16GB
	Choice /n /c ABC

	if ERRORLEVEL == 1 Set sku=i5 8GB
	if ERRORLEVEL == 2 Set sku=i7 8GB
	if ERRORLEVEL == 3 Set sku=i7 16GB
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Pro 7" (
	echo Select the SKU under test:
	Echo A - i3 4GB
	echo B - i5 8GB
	echo C - i7 16GB
	Choice /n /c ABC

	if ERRORLEVEL == 1 Set sku=i3 4GB
	if ERRORLEVEL == 2 Set sku=i5 8GB
	if ERRORLEVEL == 3 Set sku=i7 16GB
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Pro X" (
	echo Select the SKU under test:
	Echo A - Adreno 685 8GB
	echo B - Adreno 685 16GB
	Choice /n /c AB

	if ERRORLEVEL == 1 Set sku=Adreno 685 8GB
	if ERRORLEVEL == 2 Set sku=Adreno 685 16GB
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Book" (
	echo Select the SKU under test:
	Echo A - 13in i5 intel [No Nvidia]
	echo B - 13in i5 Nvidia
	echo C - 15in i7 Nvidia
	echo D - 15in i7 Nvidia GTX 965M
	Choice /n /c ABCD

	if ERRORLEVEL == 1 Set sku=13in i5 intel [No Nvidia]
	if ERRORLEVEL == 2 Set sku=13in i5 Nvidia
	if ERRORLEVEL == 3 Set sku=15in i7 Nvidia
	if ERRORLEVEL == 4 Set sku=15in i7 Nvidia GTX 965M
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Go" (
	echo Select the SKU under test:
	Echo A - 10in intel 8GB
	Choice /n /c A

	if ERRORLEVEL == 1 Set sku=10in intel 8GB
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Go 2" (
	echo Select the SKU under test:
	Echo A - M3-8100Y 4GB
	echo B - Pentium 4425 8GB
	echo C - M3 or Pentium 64GB
	Choice /n /c ABC

	if ERRORLEVEL == 1 Set sku=M3-8100Y 4GB
	if ERRORLEVEL == 2 Set sku=Pentium 4425 8GB
	if ERRORLEVEL == 3 Set sku=M3 or Pentium 64GB
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Studio" (
	echo Select the SKU under test:
	Echo A - 42L - NV965
	echo B - 43Q - NV980
	Choice /n /c AB

	if ERRORLEVEL == 1 Set sku=42L - NV965
	if ERRORLEVEL == 2 Set sku=43Q - NV980
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)
if "%Device%"=="Surface Studio 2" (
	echo Select the SKU under test:
	Echo A - Nvidia 1060
	echo B - Nvidia 1070
	Choice /n /c AB

	if ERRORLEVEL == 1 Set sku=Nvidia 1060
	if ERRORLEVEL == 2 Set sku=Nvidia 1070
	echo Selected:%sku%
	echo.
	GOTO TestInfo

)


:TestInfo
echo Select a test Category
echo A - Core [PST, CSStress, Per-Reboot]
echo B - Pillar [Creativity, Consumption, Lifecycle, Productivity, Gaming]
echo C - Subsystem [Graphics, Touch, Camera, Audio, Accessories]
echo D - RnR 
echo E - Process
Choice /n /c ABCDE

if ERRORLEVEL == 1 Set TestCat=Core
if ERRORLEVEL == 2 Set TestCat=Pillar
if ERRORLEVEL == 3 Set TestCat=Subsystem
if ERRORLEVEL == 4 Set TestCat=RnR
if ERRORLEVEL == 5 Set TestCat=Process
echo Selected:%TestCat%

echo.
echo Selet a test collateral
echo A - Accessories
echo B - Audio
echo C - Camera
echo D - Consumption
echo E - Creativity
echo F - CSStress
echo G - Gaming
echo H - Graphics
echo I - Lifecycle
echo J - Touch
echo K - Productivity
echo L - Perf-Reboot
echo M - PST
Choice /n /c ABCDEFGHIJKLM

if ERRORLEVEL == 1 Set TestColl=Accessories
if ERRORLEVEL == 2 Set TestColl=Audio
if ERRORLEVEL == 3 Set TestColl=Camera
if ERRORLEVEL == 4 Set TestColl=Consumption
if ERRORLEVEL == 5 Set TestColl=Creativity
if ERRORLEVEL == 6 Set TestColl=CSStress
if ERRORLEVEL == 7 Set TestColl=Gaming
if ERRORLEVEL == 8 Set TestColl=Graphics
if ERRORLEVEL == 9 Set TestColl=Lifecycle
if ERRORLEVEL == 10 Set TestColl=Touch
if ERRORLEVEL == 11 Set TestColl=Productivity
if ERRORLEVEL == 12 Set TestColl=Perf-Reboot
if ERRORLEVEL == 13 Set TestColl=PST
echo Selected: %TestColl%
echo.





echo exlamation:!TotalTest!
echo perc: %TotalTest%

echo.
:newTask
echo Select a task that was executed
echo A - Test Execution
echo B - Meeting
echo C - Bug Reproduction
echo D - Bug Filing
echo E - Scorecard
echo F - Setup + Imaging
echo G - Idle
echo H - Miscellaneous

Set TestCases=0
Set Passed=0
Set Failed=0
Set NA=0
Set Blocked=0
Set TotalTest=0
Set Pending=0



Choice /n /c ABCDEFGH
if ERRORLEVEL == 1 Set Tasks=Test Execution
if ERRORLEVEL == 2 Set Tasks=Meeting
if ERRORLEVEL == 3 Set Tasks=Bugs Reproduction
if ERRORLEVEL == 4 Set Tasks=Bug Filing
if ERRORLEVEL == 5 Set Tasks=Scorecard
if ERRORLEVEL == 6 Set Tasks=Setup + Imaging
if ERRORLEVEL == 7 Set Tasks=Idle
if ERRORLEVEL == 8 Set /P Tasks=Describe the task:
echo Selected: %Tasks%

if "%Tasks%"=="Test Execution" (
	echo.
	Set /P TestCases=Test Cases Executed:
	echo.
	Set /P Passed=Test Cases Passed:
	echo.
	Set /P Failed=Test Cases Failed:
	echo.
	Set /P NA=Test Cases Not Applicable:
	echo.
	Set /P Blocked=Test Cases Blocked:
	echo.
	
	if "%TestColl%"=="Camera" (
		set /P TotalTest=Total Test Cases:
	)
	if "%TestColl%"=="Gaming" (
		set /a TotalTest=79
	)
	if "%TestColl%"=="Audio" (
		set /A TotalTest=634
	)
	if "%TestColl%"=="Touch" (
		set /A TotalTest=29
	)
	if "%TestColl%"=="Creativity" (
		set /A TotalTest=28
	)
	if "%TestColl%"=="Consumption" (
		set /A TotalTest=400
	)
	if "%TestColl%"=="Lifecycle" (
		set /A TotalTest=161
	)
	if "%TestColl%"=="Productivity" (
		set /A TotalTest=46
	)

	set /a Pending=TotalTest-TestCases-NA
	set /a alreadyRun=Passed+Failed+Blocked
	set /a toBeRun = TotalTest-NA
	set /a leftOver=alreadyRun*toBeRun/100
	set /a Percentage=100-leftOver
)

echo.
Set /P Hours=Efforts utilized (in Hours):
echo.
Set /P Comments=Additional comments:
echo.


cd C:\


if not exist C:\results (
	 md results
)
	
cd results


set dt=%date:~4,2%%date:~7,2%%date:~10,4%

if '%entryCount%'=='zero' (
	echo Date,Test Train,OS,Device Under Test,SKU,Tester,Test Category,Test Collateral,Tasks Executed,Efforts Utilized,Test Cases Executed,Passed,Failed,Not Applicable, Blocked, Pending, Total test cases, Percentage,Additional Comments>>DailyEffort_%Tester%_%dt%.csv
)
echo %TodaysDate%,%TestTrain%,%OS%,%Device%,%sku%,%Tester%,%TestCat%,%TestColl%,%Tasks%,%Hours%,%TestCases%,%Passed%,%Failed%,%NA%,%Blocked%,%Pending%,%TotalTest%,%Percentage%,%Comments%>>DailyEffort_%Tester%_%dt%.csv
Set entryCount=one

:check
Choice /n /c yn /m "Do you want to add another entry? Y/N"
if ERRORLEVEL 2 GOTO end
if ERRORLEVEL 1 GOTO moreInfo

:moreInfo
echo A - Add new Task [Test Train, OS and Device stay the same]
echo B - Add new Entry
Choice /c AB /n
if ERRORLEVEL 2 GOTO newEntry
if ERRORLEVEL 1 GOTO newTask


:end
echo.

Choice /n /c yn /m "Do you want to Submit entry? Y/N"
if ERRORLEVEL 2 GOTO check
if ERRORLEVEL 1 GOTO submit


:submit
cd\
cd EffortTrackerProgram
cmail.exe -host:Auto18467hs74hf@outlook.com:WinCompPW@smtp-mail.outlook.com:587 -to:feven2007@gmail.com -from:Auto18467hs74hf@outlook.com "-subject:Daily Status Tracker_%Date%_%Tester%" "-body:Please see the attached efforts submitted by %Tester% for %Date%" "-a:c:\results\DailyEffort_%Tester%_%dt%.csv"
echo.
echo ***********************************************
echo.
Echo Daily Effort Submitted!
pause
 