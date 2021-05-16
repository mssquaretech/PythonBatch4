*** Settings ***
Library                     SeleniumLibrary
Resource                    ../Config/Env1.robot
Resource                    Pages/AmazonHomePage.robot

*** Keywords ***
User navigates to Amazon.in
    open browser            ${URL}                  ${BROWSER}
    maximize browser window
    capture page screenshot


User selects Toys from Category
    select from list by value           ${CategoryDDXpath}          Toys & Games


