json.extract! transaction, :id, :total_price, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
