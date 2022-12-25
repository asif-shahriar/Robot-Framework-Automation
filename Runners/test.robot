*** Settings ***
Library  SeleniumLibrary
Resource  ../Runners/01_Registration.robot

*** Test Cases ***
Test global
    ${printEmail}=  get variable value      ${fakeEmail}
    log to console      ${printEmail}
    ${printPass}=   get variable value    ${password}
    log to console    ${printPass}