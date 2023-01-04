*** Settings ***
Library           AppiumLibrary


*** Keywords ***
Open Session
    
    Open Application    http://0.0.0.0:4723/wd/hub
    ...    platformName=Android
    ...    deviceName=Any
    ...    app=${CURDIR}/apks/exemplo.apk
    ...    appPackage=com.google.android.apps.nexuslauncher
   


Close Session
    Quit Application

Suite Teardown
    Close Application