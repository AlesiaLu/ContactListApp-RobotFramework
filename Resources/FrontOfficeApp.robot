*** Settings ***
Resource  ./PO/Main_page.robot


*** Variables ***


*** Keywords ***
Go to Login
    Go to Main Page
    Main_page.Verify Page Loaded
    Main_page.Enter Login Email
    Main_page.Enter Login Password
    Main_page.Find Submit
    Main_page.Submit Login
