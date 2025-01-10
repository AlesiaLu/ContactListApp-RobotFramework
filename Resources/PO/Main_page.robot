*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MAIN_PAGE_WELCOME_ELEMENT}    class="welcome-message
${LOGIN_EMAIL}          id=email
${LOGIN_PASSWORD}       xpath=//input[@id="password"]
${SUBMIT_LOGIN_BTN}     css=button[id="submit"]
${SIGNUP_BTN}           css=button[id="signup"]
${ERROR_MESSAGE}        id=error
${BROWSER}  chrome
${MAIN_URL}  https://thinking-tester-contact-list.herokuapp.com/
${CONTACT_LIST_URL}     https://thinking-tester-contact-list.herokuapp.com/contactList


*** Keywords ***
Navigate To
    go to  ${MAIN_URL}

Verify Page Loaded
    wait until page contains element  ${MAIN_PAGE_WELCOME_ELEMENT}

Enter Login Email
    [Arguments]    ${email}
    Input Text    ${LOGIN_EMAIL}    ${email}

Enter Login Password
    [Arguments]    ${password}
    Input Text    ${LOGIN_PASSWORD}    ${password}

Find Submit
    Element Should Be Visible    ${SUBMIT_LOGIN_BTN}

Submit Login
    Click Button    ${SUBMIT_LOGIN_BTN}
    Sleep  5s


#Validate Page Contents
#    # this fails in chrome but passes in Edge
#    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team
#
#    ${ElementText} =  get text  ${TEAM_HEADER_LABEL}
#    should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true