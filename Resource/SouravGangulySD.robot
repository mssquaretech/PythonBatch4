*** Settings ***
Library                 SeleniumLibrary
Resource                ../Config/EnvSG.robot

*** Keywords ***
User navigates to SouravGanguly.in
    open browser        ${URL}      ${BROWSER}
    maximize browser window
    capture page screenshot

When User Click on Threedotted Line
    click element       ${ThreedotLineXpath}
    wait until element is visible       ${RecordsXpath}     Timeout=20

    click element       ${RecordsXpath}



