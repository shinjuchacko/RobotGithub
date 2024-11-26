*** Settings ***
Library  SeleniumLibrary
Resource    ../PageKeywords/GithubMainPageKeywords.robot
Variables       C:/Users/shinj/PycharmProjects/DemoProject/PageObjects/GithubSignUpPageLocators.py

*** Variables ***
*** Keywords ***

SignUp To Github By Existing User
    [Arguments]    ${userName}
    Click SignUp
    Set Selenium Implicit Wait  10 seconds
    Input Text      ${InputEmail}      ${userName}
    Sleep       5

Verify Existing User Error Message
    [Arguments]    ${errorMessage}
#    ${errorText} =  Get Text    ${ErrorExistingUser}
#   Log To Console  ${errorText}
    Element Should Contain    ${ErrorExistingUser}    ${errorMessage}
