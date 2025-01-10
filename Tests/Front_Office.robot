*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/PO/Main_page.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***


*** Test Cases ***
Login with Valid Data
    [Documentation]  This is test 1
    [Tags]  test1
    Main_page.Enter Login Email     alesia@gmail.com
    Main_page.Enter Login Password      1111111
    Main_page.Find Submit
    Main_page.Submit Login
    Location Should Be    ${CONTACT_LIST_URL}


