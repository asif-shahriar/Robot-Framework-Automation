*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BaseURL}  https://automationexercise.com/login
${Browser}  chrome

*** Keywords ***
Open My Browser
    open browser  ${BaseURL}    ${Browser}
    maximize browser window
    set selenium speed  0.5

Close My Browsers
    close all browsers