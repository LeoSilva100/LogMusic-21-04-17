json.extract! contact, :id, :phone, :facebook, :instagran, :twitter, :created_at, :updated_at
json.url contact_url(contact, format: :json)
