*** Settings ***
Resource   ../../../resources/GUIs/homepage/tasks.resource
Resource   ../../../resources/GUIs/Invoice_Detail_Page/tasks.resource
Test Setup    Open Browser 

*** Test Cases ***
Add New Invoice
    Open Add Invoice Tab
    Fill In Details    ${invoice_number}    ${invoice_company_name}    ${invoice_type_of_work}    ${invoice_cost}    ${invoice_status}    ${invoice_due_date}    ${invoice_comment}
    Select Create Button
    Go to Main Invoice Tab
    Verify Data is Added    ${invoice_number}    ${invoice_company_name}    ${invoice_type_of_work}    ${invoice_cost}    ${invoice_status}    ${invoice_due_date}    ${invoice_comment}
    Log To Console    Invoice ${invoice_number} has successfully been added.
