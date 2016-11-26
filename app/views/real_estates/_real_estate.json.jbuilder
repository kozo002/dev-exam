json.extract! real_estate, :id, :name, :rent, :address, :built_at, :notes, :created_at, :updated_at
json.url real_estate_url(real_estate, format: :json)