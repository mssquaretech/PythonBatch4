*** Settings ***
Library                             SeleniumLibrary
Resource                            ../../Resource/SouravGangulySD.robot

*** Test Cases ***
Automating SouravGanguly Site
    Given User navigates to SouravGanguly.in
    When User Click on Threedotted Line
    And select Records and Accolades
    And scroll on it
    Then Run scored prints
