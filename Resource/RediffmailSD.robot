*** Settings ***
Library     SeleniumLibrary
Resource    ../Config/Env_Rediff.robot
Resource        pages/RediffmailHomepage.robot


*** Keywords ***
User navigates to Rediffmail.com
    open browser        ${URL}      ${BROWSER}
    maximize browser window
    capture page screenshot

When User Select Top News
    click element       ${TopStoriesXpath}

Then print all the top news
    ${count}            get element count   ${NewslisXpath}
    FOR         ${i}        IN RANGE   1     ${count}+1
        ${News}     get text    ${NewslisXpath}
        log to console      ${News}
    END
