*** Settings ***
Library  SeleniumLibrary
Variables       C:/Users/shinj/PycharmProjects/DemoProject/PageObjects/GithubMainPageLocators.py

*** Variables ***

*** Keywords ***
Click SignIn Link
    Click Link      ${ButtonHeaderSignIn}

Click SignUp
    Click Link      ${ButtonHeaderSignUp}

Verify Header Menu Option Is Present
    [Arguments]     ${HeaderMenuOption}
    Element Should Contain      ${HeaderMenuOptions}    ${HeaderMenuOption}