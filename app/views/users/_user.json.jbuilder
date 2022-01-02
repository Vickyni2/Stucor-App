json.extract! user, :id, :name, :Dept, :email, :mobile, :regno, :created_at, :updated_at
json.url user_url(user, format: :json)
