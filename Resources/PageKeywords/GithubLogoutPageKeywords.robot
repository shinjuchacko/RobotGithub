*** Settings ***
Library     SeleniumLibrary
Variables       C:/Users/shinj/PycharmProjects/DemoProject/PageObjects/GithubUserDashboardLocators.py
Variables       C:/Users/shinj/PycharmProjects/DemoProject/PageObjects/GithubLogoutPageLocators.py


*** Keywords ***
Logout From Github
    Set Selenium Implicit Wait  20 seconds
    Click Element   ${LoggedInUserIcon}
    Scroll Element Into View    ${SignOut}
    Click Element   ${SignOut}
    Click Element   ${SignoutFromUser}