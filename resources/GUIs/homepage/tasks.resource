*** Settings ***
Library    Browser
Resource   ../homepage/actions.resource
Resource   ../Invoice_Detail_Page/actions.resource

*** Keywords ***
##Add New Invoice ##################################################
Open Add Invoice Tab
    Go to Add Invoice Tab
    Verify If Add Invoice Tab Is Open

##Edit Invoice Detail ###################################################################3
Open Selected Invoice Number Page
    View Invoice Number Details    ${invoice_number}
    Verify Invoice Page is navigated    ${invoice_number}

#####Data Driven#######################
Verify Invoice Added Successfully
    [Arguments]    ${invoice_num}    ${company_name}    ${type_of_work}    ${invoice_cost}    ${invoice_due_date}    ${invoice_comment}    ${status}

    ${invoice_cell}=    Set Variable    id=invoiceNo_${invoice_num}
    Wait For Elements State    ${invoice_cell}    visible    timeout=15s

    ${company}=         Get Text    ${company_name_column}
    ${type}=            Get Text    ${type_of_work_column}
    ${cost}=            Get Text    ${amount_column}
    ${due}=             Get Text    ${due_date_column}
    ${comment}=         Get Text    ${description_column}
    ${invoice_status}=  Get Text    ${status_column}

    Log    Company: ${company},Type of Work: ${type}, Cost: ${cost}, Due Date: ${due}, Comment: ${comment}, Status: ${invoice_status}

    Should Be Equal    ${company}         ${company_name}
    Should Be Equal    ${type}            ${type_of_work}
    Should Be Equal    ${cost}            ${invoice_cost}
    Should Be Equal    ${due}             ${invoice_due_date}
    Should Be Equal    ${comment}         ${invoice_comment}
    Should Be Equal    ${invoice_status}  ${status}