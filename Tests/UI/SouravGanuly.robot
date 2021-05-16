*** Settings ***
Library                             seleniumLibrary
Resource                            ../../Resource/SouravGangulySD.robot

*** Test Cases ***
Automating SouravGanguly Site
    Given User navigates to SouravGanguly.in
    When User navigates to Records and Accolades
    And select Records and Accolades
    And scroll on it
    Then Run scored prints
