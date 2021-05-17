*** Settings ***

Library                 SeleniumLibrary
Resource                ../Config/Env1.robot
Resource                Login Page/LoginpageElements.robot
#Resource                ../Tests/UI/AmazonFF.robot

*** Keywords ***

User navigates to Amazon.in
    open browser                ${URL}              ${Browser}
    maximize browser window

User selects Toys from DropDown
    select from list by value       ${ListXpath}        ${DDValue}

Search for Cars
    input text                  ${TextBoxXpath}         ${ToyValue}

Click on Search button
    click button                ${SearchBtnXpath}

List of Cars Appears
    capture page screenshot