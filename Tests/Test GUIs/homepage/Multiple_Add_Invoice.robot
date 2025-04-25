*** Settings ***
Resource   ../../../resources/GUIs/homepage/tasks.resource
Resource   ../../../resources/GUIs/Invoice_Detail_Page/tasks.resource
Test Setup    Open Browser 
Test Template    Invoice Workflow
  
*** Test Cases ***
Create Invoice for INV10031
    INV10031    Acme Corp    Development    5000    2023-12-31    Initial payment    Paid

Create Invoice for INV10032
    INV10032    Acme Corp    Development    5000    2023-12-31    Initial payment    Paid

Create Invoice for INV10033
    INV10033    Initech    Development    3200    2025-06-15    Backend overhaul    Draft

*** Keywords ***
Invoice Workflow
    [Arguments]    ${invoice_num}    ${company_name}    ${type_of_work}    ${cost}    ${due_date}    ${comment}    ${status}

    Open Add Invoice Tab
    Fill In Details    ${invoice_num}    ${company_name}    ${type_of_work}    ${cost}    ${status}    ${due_date}    ${comment}
    Select Create Button
    Go to Main Invoice Tab
    Verify Data is Added   ${invoice_num}    ${company_name}    ${type_of_work}    ${cost}    ${status}    ${due_date}    ${comment}
