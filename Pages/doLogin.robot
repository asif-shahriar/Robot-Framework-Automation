*** Settings ***
Library  SeleniumLibrary
Variables  ../Selectors/Login.py

*** Keywords ***
Input Email
    [Arguments]  ${email}
    input text  ${enterEmail}   ${email}
