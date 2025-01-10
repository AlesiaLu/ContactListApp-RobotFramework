*** Settings ***
Library  SeleniumLibrary
Resource  ./PO/Main_page.robot

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser    ${MAIN_URL}    ${BROWSER}
    maximize browser window

End Web Test
    close all browsers