*** Settings ***
Resource   ../../../resources/GUIs/homepage/tasks.resource
Resource   ../../../resources/GUIs/Invoice_Detail_Page/tasks.resource


Test Setup    Open Browser 
 
*** Test Cases ***
Delete Existing Invoice
    Open Selected Invoice Number Page 
    Select Delete Button
    Verify Invoice Deleted    ${invoice_number}
    Log To Console    Invoice ${invoice_number} has been deleted.

