*** Settings ***
Library     SeleniumLibrary
Resource    ../PageKeywords/GithubMainPageKeywords.robot
Resource    ../PageKeywords/GithubLogoutPageKeywords.robot
Variables       C:/Users/shinj/PycharmProjects/DemoProject/PageObjects/GithubSignInPageLocators.py
Variables       C:/Users/shinj/PycharmProjects/DemoProject/PageObjects/GithubUserDashboardLocators.py


*** Variables ***

*** Keywords ***
Login To Account
    [Arguments]    ${userName}     ${Password}
    Click SignIn Link
    #Sleep   5
    Set Selenium Implicit Wait  10 seconds
    Input Text      ${InputUsername}      ${userName}
    Input Text      ${InputPassword}     ${Password}
    Click Element   ${ButtonSignIn}

Verify Successful Login
    Set Selenium Implicit Wait  10 seconds
    Title should be     GitHub
#    Logout From Github
