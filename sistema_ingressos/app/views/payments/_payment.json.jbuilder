json.extract! payment, :id, :payment_moment, :paid_amount, :change_money, :created_at, :updated_at
json.url payment_url(payment, format: :json)
