REM Wait 5 seconds
timeout /t 5

REM Stop SMA
"c:\program files\altiris\altiris agent\aexnsagent.exe" /stop

REM Wait 5 seconds
timeout /t 5

REM Delete SWD Policy file from either location
del "C:\Program Files\Altiris\Altiris Agent\Agents\SoftwareManagement\Software Delivery\AeXSWDPolicy.xml"
del "C:\Program Files\Altiris\Altiris Agent\Software Delivery\AeXSWDPolicy.xml"

REM Delete Client Policy files
del /Q "C:\Program Files\Altiris\Altiris Agent\Client Policies\*.*"

REM Wait 5 seconds
timeout /t 5

REM Delete all Inventory files
del /Q "C:\Program Files\Altiris\Inventory\NSI\*.*"

REM Start SMA
"c:\program files\altiris\altiris agent\aexnsagent.exe" /start

REM Wait 45 seconds
timeout /t 45

exit