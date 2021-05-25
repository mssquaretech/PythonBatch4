*** Settings ***
Library                             SeleniumLibrary
Resource                            ../../Resource/AmazonSD.robot
Resource                            ../../Config/Env1.robot
Suite Setup             Dynamic Folder Creation     Screenshot

*** Test Cases ***
Automating Amazon website
    Given User navigates to Amazon.in
    When User selects Toys from Category
    And Searches for Cars
    And Click on Search Button
    Then List of cars appears




