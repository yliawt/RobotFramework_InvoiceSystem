*** Settings ***
Resource   ../../../resources/GUIs/homepage/tasks.resource
Resource   ../../../resources/GUIs/Invoice_Detail_Page/tasks.resource

Test Setup    Open Browser 

*** Test Cases ***
Update Existing Invoice
    Update and Verify for Company Name
    Update and Verify for Type of Work
    Update and Verify for Amount
    Update and Verify for Description
    Update and Verify for Status
    Log To Console    Invoice ${invoice_number} has successfully been updated.

