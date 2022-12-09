json.extract! group_expense, :id, :group_id, :expense_id, :created_at, :updated_at
json.url group_expense_url(group_expense, format: :json)
