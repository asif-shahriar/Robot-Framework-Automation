*** Settings ***
Library  SeleniumLibrary
Variables  ../Selectors/Login.py

*** Keywords ***
Input Email
    [Arguments]  ${email}
    input text  ${enterEmail}   ${email}

Input Password For Login
    [Arguments]  ${pass}
    input text  ${enterPass}   ${pass}

Click Login
    click button    ${btnLogin}

Assert If Logout Button Is Present
    page should contain element    ${btnLogout}
