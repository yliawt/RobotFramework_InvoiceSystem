*** Settings ***
Library    Browser
Resource   ../Invoice_Detail_Page/actions.resource
Resource   ../homepage/actions.resource
Resource    ../homepage/tasks.resource

*** Keywords ***
##Add New Invoice ##################################################
Fill In Details
    [Arguments]    ${applied_inv_num}    ${applied_company_name}    ${applied_type_of_work}    ${applied_cost}    ${applied_status}     ${applied_due_date}     ${applied_comment}
    Input Text Into Field    ${invoice_number_field}    ${applied_inv_num}
    Input Text Into Field    ${company_name_field}      ${applied_company_name}
    Input Text Into Field    ${type_of_work_field}      ${applied_type_of_work}
    Input Text Into Field    ${invoice_cost_field}      ${applied_cost} 
    Select Status            ${applied_status}     
    Input Text Into Field    ${invoice_due_date_field}    ${applied_due_date}
    Input Text Into Field    ${invoice_comment_field}     ${applied_comment}
    Log   All data filled for ${applied_inv_num}

Verify Data is Added
    [Arguments]     ${invoice_num}  ${comp_name}    ${work_type}    ${amnt_cost}    ${stat_name}    ${due_date}    ${desc_name}
    Verify Column is Contain New Information      ${company_name_column}   ${invoice_num}      ${comp_name}    Company Name
    Verify Column is Contain New Information      ${type_of_work_column}   ${invoice_num}      ${work_type}    Type Of Work
    Verify Column is Contain New Information      ${amount_column}         ${invoice_num}      ${amnt_cost}    Amount
    Verify Column is Contain New Information      ${status_column}         ${invoice_num}      ${stat_name}    Status
    Verify Column is Contain New Information      ${due_date_column}       ${invoice_num}      ${due_date}     Due Date
    Verify Column is Contain New Information      ${description_column}    ${invoice_num}      ${desc_name}    Description

##Edit Invoice Detail ###################################################################3
 Update and Verify for Company Name
    Open Selected Invoice Number Page
    Input Text Into Field    ${company_name_field}    ${company_name_updated}
    Select Save Button
    Verify Column is Contain Updated Information          ${company_name_column}    ${invoice_number}      ${company_name_updated}    Company Name

 Update and Verify for Type of Work
    Open Selected Invoice Number Page
    Input Text Into Field    ${type_of_work_field}    ${type_of_work_updated}
    Select Save Button
    Verify Column is Contain Updated Information          ${type_of_work_column}    ${invoice_number}      ${type_of_work_updated}    Type Of Work

Update and Verify for Amount
    Open Selected Invoice Number Page
    Input Text Into Field    ${invoice_cost_field}    ${invoice_cost_updated}
    Select Save Button
    Verify Column is Contain Updated Information          ${amount_column}    ${invoice_number}      ${invoice_cost_updated}    Amount

Update and Verify for Description
    Open Selected Invoice Number Page
    Input Text Into Field    ${invoice_comment_field}    ${invoice_comment_updated}
    Select Save Button
    Verify Column is Contain Updated Information          ${description_column}    ${invoice_number}      ${invoice_comment_updated}    Description

Update and Verify for Due Date
    Open Selected Invoice Number Page
    Input Text Into Field    ${invoice_due_date_field}    ${invoice_due_date_updated}
    Select Save Button
    Verify Column is Contain Updated Information          ${due_date_column}    ${invoice_number}      ${invoice_due_date_updated}    Due Date

Update and Verify for Status
    Open Selected Invoice Number Page
    Select Status    ${invoice_status_updated}
    Select Save Button
    Verify Column is Contain Updated Information          ${status_column}    ${invoice_number}      ${invoice_status_updated}    Status



