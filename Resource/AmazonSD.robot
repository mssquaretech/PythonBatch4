*** Settings ***
Library                 SeleniumLibrary
Resource                ../Config/Env1.robot
Resource        pages/AmazonHomepage.robot


*** Keywords ***
User Navigates to Amazon.in
    open browser        ${URL}      ${BROSWER}
    maximize browser window
    capture page screenshot

User selects Toys from Category
    select from list by value           ${CategoryDDPath}       Toys & Games
And Searches for Cars
    input text                          ${SearchTxtboxXpath}    Cars
And Click on Search Button
    click element                       ${SearchButton}


User search for Value
    ${Status}   CommonUtility.Read_Excel_File   Saurabh ${CURDIR}/../Data/InputData.xls
    input text  //input[@id='twotabsearchtextbox']  ${status}
