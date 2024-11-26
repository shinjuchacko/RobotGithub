*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open My Browser
    [Arguments]     ${appUrl}   ${appBrowser}
    Open Browser    ${appUrl}     ${appBrowser}
    Maximize Browser Window
    Log Title
