*** Settings ***
Library    Browser
Library    DateTime
Variables  ../../../configs/testdata.py
Variables  ../../../configs/url.py
Variables  ../homepage/page.py

*** Keywords ***
## Generic ##################################################
Open Browser
    Browser.Open Browser    ${main_page_url}
    Verify If is navigated to main page

Go to Add Invoice Tab
    Browser.Click    ${add_invoice_tab}

Verify If is navigated to main page
    ${current_url}=    Browser.Get Url
    Should Be Equal    ${current_url}    ${main_page_url}

##Add New Invoice Number ##################################################

Verify Column is Contain New Information
    [Arguments]    ${column_name}   ${applied_inv_num}   ${expected_value}    ${content_label}
    ${xpath}=    Evaluate    page.column_text_in_invoice_row.format("${applied_inv_num}", "${column_name}")    modules=page
    Wait For Elements State    ${xpath}    visible    timeout=30s
    ${actual_value}=    Get Text    ${xpath}
    Log    Updated ${content_label}: ${actual_value}
    Should Contain    ${actual_value}    ${expected_value}

##Edit Invoice Detail ##################################################

Verify Column is Contain Updated Information
    [Arguments]    ${column_name}   ${invoice_number}   ${updated_value}    ${Content}
    Wait For Elements State    xpath=//td[@id="invoiceNo_${invoice_number}"]    visible    timeout=30s
    ${company_name}=    Get Text    xpath=//td[contains(${column_name}) and contains(text(), '${updated_value}')]
    Log   Updated ${Content}: ${company_name}
    Should Contain    ${company_name}    ${updated_value}

##Delete Invoice Detail ##################################################
Verify Invoice Deleted
    [Arguments]    ${invoice_num}
    ${invoice_cell}=    Set Variable    id=invoiceNo_${invoice_num}
    Wait For Elements State    ${invoice_cell}    detached    timeout=10s
    

