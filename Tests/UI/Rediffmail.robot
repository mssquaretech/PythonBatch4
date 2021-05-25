*** Settings ***
Library             SeleniumLibrary
Resource           ../../Resource/RediffmailSD.robot

*** Test Cases ***
Automating Rediffmail Top News
    Given User navigates to Rediffmail.com
    When User Select Top News
    Then print all the top news



