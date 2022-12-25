*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary  WITH NAME  faker
Resource  ../Pages/doRegistration.robot
Resource  ../Environment/Setup.robot
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers

*** Variables ***
${FirstName}    Robot
${password}     1234

*** Test Cases ***
User Registration
#    open my browser
    ${fakeEmail}=  faker.email
    ${fakeFirstName}=  faker.First Name
    ${fakeLastName}=  faker.Last Name
    ${randomCity}=  faker.City
    ${randomZip}=   faker.Zipcode
    ${randomPhone}=     faker.Phone Number
    set global variable  ${fakeEmail}
    set global variable    ${password}
    log to console  New User is ${fakeEmail}
    create new user to register  ${FirstName}   ${fakeEmail}
    Input Password  ${password}
    Input First Name  ${fakeFirstName}
    Input Last Name   ${fakeLastName}
    Input Address  Dhaka-1208
    Select A Country  United States
    Input State  Arizona
    Input City  ${randomCity}
    Input Zipcode  ${randomZip}
    Input Mobile Number  ${randomPhone}
    click create account button
    Assert Success

