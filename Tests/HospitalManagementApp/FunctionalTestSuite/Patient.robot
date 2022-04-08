*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://127.0.0.1:5000/
${user_parameter}  admin
${pass_parameter}  12345
${name_parameter}  rich
${mobile_parameter}  0987456388
${age_parameter}  20
${address_parameter}  nagpur
${dob_parameter}  2-12-2002
${place_parameter}  nagpur
${pin_parameter}  987423
*** Test Cases ***
Login Page test case
    [Documentation]  login page
    [Tags]  staff
    Open Browser  ${url}  chrome
    Input text  name:username  ${user_parameter}
    sleep  1s
    Input text  name:pass  ${pass_parameter}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Add Patient test case
    [Documentation]   add patient
    [Tags]  staff
    switch window  title:Patient Add form
    Input text  name:Name  ${name_parameter}
    sleep  1s
    Input text  name:Mobile Number  ${mobile_parameter}
    sleep  1s
    Input text  name:Age  ${age_parameter}
    sleep  1s
    Input text  name:Address  ${address_parameter}
    sleep  1s
    Input text  name:DOB  ${dob_parameter}
    sleep  1s
    Input text  name:Place  ${place_parameter}
    sleep  1s
    Input text  name:Pincode  ${pin_parameter}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  5s
Search patient test case
    [Documentation]   search patient
    [Tags]  staff
    click element  xpath://html/body/nav/div/div/ul/li[2]/a
    sleep  1s
    Input text  name:Mobile Number  ${mobile_parameter}
    sleep  1s
    click button  xpath://html/body/div[1]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  5s

Delete patient test case
    [Documentation]   delete patient
    [Tags]  staff
    click element  xpath://html/body/nav/div/div/ul/li[3]/a
    sleep  1s
    Input text  name:Mobile Number  ${mobile_parameter}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button

View all test case
    [Documentation]   view all patients
    [Tags]  staff
    click element  xpath://html/body/nav/div/div/ul/li[4]/a
    sleep  5s
    Close Browser
*** Keywords ***
