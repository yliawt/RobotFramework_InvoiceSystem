#Tabs
all_invoice_tab= 'css=li.sidebar-list > a[href="#/tables"]'
#Buttons
create_button = "xpath=//button[text()='Create']"
cancel_button = 'css=button.btn.btn-default'
save_button = 'xpath=//button[@id="saveButton"]'
delete_button = 'xpath=//button[@id="deleteButton"]'

##Field and Dropdown fields
invoice_number_field = 'css=input[name="invoice"]'
company_name_field = 'css=input[name="company"]'
type_of_work_field = 'css=input[name="type"]'
invoice_cost_field = 'css=input[name="price"]'
invoice_status_dropdown = 'css=select#selectStatus'
invoice_due_date_field = 'css=input[name="dueDate"]'
invoice_comment_field = 'css=input[name="comment"]'

# page.py
invoice_row_by_applied_number = "//td[@id='invoiceNo_{}']"

column_text_in_invoice_row = "//tr[td[@id='invoiceNo_{}']]//td[contains(@class, '{}')]"

