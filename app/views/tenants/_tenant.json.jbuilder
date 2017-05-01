json.extract! tenant, :id, :name, :lastName, :dateOfBirth, :telephone, :cellphone, :gender, :email, :password, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
