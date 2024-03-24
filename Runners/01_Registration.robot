*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary  WITH NAME  faker
Library    OperatingSystem
Resource  ../Pages/doRegistration.robot
Resource  ../Environment/Setup.robot
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers

*** Variables ***
${min_value}    0
${max_value}    6

*** Test Cases ***
User Registration
    ${fakeEmail}=  faker.email
    ${fakeFirstName}=  faker.first_name
    ${fakeLastName}=  faker.Last Name
    ${randomAdress}=    faker.address
    ${randomCity}=  faker.City
    ${randomZip}=   faker.Zipcode
    ${randomPhone}=     faker.Phone Number
    ${randomPass}=      faker.password
    ${random_index_for_country_dropdown}=    Evaluate    random.randint(${min_value}, ${max_value})

    set global variable  ${fakeEmail}
    set global variable    ${randomPass}

    log to console  New User is ${fakeEmail}

    create new user to register  ${fakeFirstName}   ${fakeEmail}
    Input Password  ${randomPass}
    Input First Name  ${fakeFirstName}
    Input Last Name   ${fakeLastName}
    Input Address  ${randomAdress}
    Select A Country  ${random_index_for_country_dropdown}
    Input State  ${randomCity}
    Input City  ${randomCity}
    Input Zipcode  ${randomZip}
    Input Mobile Number  ${randomPhone}
    click create account button
    Assert Success

