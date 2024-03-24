*** Settings ***
Library  SeleniumLibrary
Resource  ../Pages/doLogin.robot
Resource  ../Environment/Setup.robot
Resource  ../Pages/doRegistration.robot
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers


*** Test Cases ***
Login To System
    ${enterEmail}=  get variable value     ${fakeEmail}
    ${pass}=  get variable value     ${randomPass}
    Input Email     ${enterEmail}
    log to console  The registered email is ${enterEmail}
    log to console  The registered password is ${pass}
    Input Password For Login    ${pass}
    Click Login
    Assert If Logout Button Is Present

