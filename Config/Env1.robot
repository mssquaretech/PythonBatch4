*** Settings    ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ../Library/CommonUtility.py



*** Variables ***
${URL}              https://amazon.in
${BROSWER}          chrome


*** Keywords ***
Dynamic Folder Creation
    [Arguments]         ${FolderName}
    ${Timestamp}        CommonUtility.GetTimeStamp
    OperatingSystem.create Directory        ${CURDIR}/../Results/${FolderName}/${Timestamp}
    seleniumLibrary.set screenshot Directory  ${CURDIR}/../Results/${FolderName}/${Timestamp}
