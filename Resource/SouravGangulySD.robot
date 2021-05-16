*** Settings ***
Library             SeleniumLibrary
Resource                ../Config/EnvSG.robot

*** Keywords ***
User navigates to SouravGanguly.in
    open browser        ${URL}      ${BROSWER}
    maximize browser window
    capture page screenshot

User navigates to Records and Accolades
click Element       ${ThreedotLineXpath}
click Element       ${RecordsXpath}
