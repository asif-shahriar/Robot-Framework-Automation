*** Settings ***
Library  SeleniumLibrary
Variables  ../Selectors/Registration.py

*** Keywords ***
Create New User To Register
    [Arguments]  ${first}   ${last}
    input text  ${newFirstName}     ${first}
    input text  ${newLastName}      ${last}
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
    [Arguments]  ${country}
    select from list by label  ${selectCountry}    ${country}

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
    scroll element into view    ${btnCreate}
    wait until element is visible    ${btnCreate}
    click button  ${btnCreate}

Assert Success
    page should contain  Congratulations! Your new account has been successfully created!