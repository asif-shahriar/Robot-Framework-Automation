*** Settings ***
Library  SeleniumLibrary
Variables  ../Selectors/Registration.py

*** Keywords ***
Create New User To Register
    [Arguments]  ${first}   ${email}
    input text  ${newFirstName}     ${first}
    input text  ${newEmail}      ${email}
    wait until element is visible  ${btnSubmit}
    click button  ${btnSubmit}
    sleep  2

Input Password
    [Arguments]  ${pass}
    input text  ${enterPass}    ${pass}

Input First Name
    [Arguments]  ${firstname}
    input text  ${enterFirstName}   ${firstname}

Input Last Name
    [Arguments]  ${lastname}
    input text  ${enterLastName}    ${lastname}

Input Address
    [Arguments]  ${address}
    input text  ${enterAddress}     ${address}

Select A Country
    [Arguments]  ${index}
    select from list by index    ${selectCountry}    ${index}

Input State
    [Arguments]  ${state}
    input text  ${enterState}   ${state}

Input City
    [Arguments]  ${city}
    input text  ${enterCity}    ${city}

Input Zipcode
    [Arguments]  ${zip}
    input text  ${enterZipcode}     ${zip}

Input Mobile Number
    [Arguments]  ${mobile}
    input text  ${enterPhone}   ${mobile}

Click Create Account Button
#    scroll element into view    ${btnCreate}
    Scroll To Top Or Bottom    bottom
    wait until element is visible    ${btnCreate}
    click button  ${btnCreate}

Assert Success
    page should contain  Congratulations! Your new account has been successfully created!

Scroll To Top Or Bottom
    [Arguments]    ${position}
    Run Keyword If    '${position}' == 'top'    Execute JavaScript    window.scrollTo(0, 0)
    Run Keyword If    '${position}' == 'bottom'    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)