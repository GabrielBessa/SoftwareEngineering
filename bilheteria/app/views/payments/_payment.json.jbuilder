json.extract! payment, :id, :buy, :method, :paid_value, :payment_moment, :created_at, :updated_at
json.url payment_url(payment, format: :json)
