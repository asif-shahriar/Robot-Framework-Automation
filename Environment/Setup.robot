*** Settings ***
Library  SeleniumLibrary
Library    ../Library/webdriversync.py

*** Variables ***
${BaseURL}  https://automationexercise.com/login
${Browser}  chrome

*** Keywords ***
Open My Browser
    Get Selenium WebDriver Path    ${Browser}
    open browser    ${BaseURL}   ${Browser}
    maximize browser window
    set selenium speed  0.1

Close My Browsers
    close all browsers

#Get Webdriver Path
#    [Arguments]    ${browser_name}
#    ${path}  Get Selenium WebDriver Path     ${browser_name}
