json.extract! contract_model, :id, :title, :body, :created_at, :updated_at
json.url contract_model_url(contract_model, format: :json)
