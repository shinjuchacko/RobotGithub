*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageKeywords/GithubSignInPageKeywords.robot
Resource  ../Resources/PageKeywords/GithubSignUpPageKeywords.robot
Resource  ../Resources/UtilKeywords/BrowserRelatedKeywords.robot
Variables       ../PageObjects/Credentials.py
Variables       ../PageObjects/BrowserInfo.py
Variables       ../PageObjects/PageInfo.py

Test Setup       Open My Browser   ${GitHub_MainPage}  ${Browser_Chrome}
Test Teardown  Close Browser

*** Test Cases ***
LoginToGithubAccount
    Login To Account    ${user_name}      ${user_password}
    Verify Successful Login

SignUpWithExistingUser
    SignUp To Github By Existing User       ${user_name}
    Verify Existing User Error Message      The email you have provided is already associated with an account.



