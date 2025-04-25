import uuid
import datetime

# --- Generate Unique Invoice Number ---
prefix = "INV"
unique_id = uuid.uuid4().hex[:8].upper() 
invoice_number = f"{prefix}{unique_id}"

# --- Static Fields ---
invoice_company_name = 'Skyline Architects'
invoice_type_of_work = 'Structural Engineering'
invoice_cost = '4500.5'
invoice_status = 'Paid'
invoice_due_date = (datetime.datetime.now() + datetime.timedelta(days=7)).strftime("%Y-%m-%d")
invoice_comment = 'Blueprint design phase 1'

# --- Updated Fields ---
company_name_updated = 'Skyline Corp.'
type_of_work_updated = 'Architecture design'
invoice_cost_updated = '800.99'
invoice_status_updated = 'Past Due'
invoice_due_date_updated = (datetime.datetime.now() + datetime.timedelta(days=30)).strftime("%Y-%m-%d")
invoice_comment_updated = 'Blueprint design phase 5'
