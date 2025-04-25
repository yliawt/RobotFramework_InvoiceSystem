*** Settings ***
Library    Browser
Variables  ../../../configs/testdata.py
Variables  ../../../configs/url.py
Variables  ../Invoice_Detail_Page/page.py

*** Keywords ***
## Generic ##################################################
Go to Main Invoice Tab
    Browser.Click    ${all_invoice_tab}
    Sleep     3s

Verify If Add Invoice Tab Is Open
    Wait For Elements State    ${invoice_number_field}    visible
    Wait For Elements State    ${invoice_due_date_field}    visible

Select Save Button
    Click    ${save_button}   
    Wait For Load State    load    timeout=10s

Select Delete Button
    Click    ${delete_button} 
    Wait For Load State    load    timeout=10s
    Go to Main Invoice Tab
    Sleep    5s
            
Select Create Button
    Click    ${create_button}
    Wait For Load State    load    timeout=10s

##Add New Invoice Number ##################################################
Input Text Into Field
    [Arguments]    ${field_selector}    ${text_value}
    Type Text    ${field_selector}    ${text_value}

Select Status
    [Arguments]    ${status}
    Select Options By    ${invoice_status_dropdown}    value    ${status}

##Edit Invoice Detail ##################################################
View Invoice Number Details
    [Arguments]    ${invoice_num}
    Sleep     5s
    Wait For Elements State    xpath=//a[normalize-space(text())="${invoice_num}"]    attached
    Click    xpath=//a[normalize-space(text())="${invoice_num}"]

Verify Invoice Page is navigated
    [Arguments]    ${invoice_number}
    ${current_url}=    Browser.Get Url
    ${current_invoice_number}=    Get Text    ${invoice_number_field}
    Should Be Equal    ${current_url}    ${edit_invoice_url}
    Should Be Equal As Strings    ${current_invoice_number}    ${invoice_number}

Open Invoice Number Page
    View Invoice Number Details    ${invoice_number}
    Verify Invoice Page is navigated    ${invoice_number}
