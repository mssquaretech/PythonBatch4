*** Settings ***
Library                 SeleniumLibray
Resource                ../../Resource/AmazonSD.robot

*** Test Cases ***
Automating Amazon Website
    Given User navigates to Amazon.in
    When User selects Toys from DropDown
    And Search for Cars
    And Click on Search button
    Then List of Cars Appears
