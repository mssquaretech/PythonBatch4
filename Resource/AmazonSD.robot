*** Settings ***
Library                 SeleniumLibrary
Resource                ../Config/Env1.robot


*** Keywords ***
User Navigates to Amazon.in
    open browser        ${URL}      ${BROSWER}
    maximize browser window
    capture page screenshot

User selects Toys from Category
    select from list by value           ${CategoryDDPath}       Toys & Games
    input text                          ${SearchTxtboxXpath}    Cars
    click element                       ${SearchButton}


