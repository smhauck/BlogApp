json.extract! user, :id, :username, :password_digest, :email_primary, :email_secondary, :phone_mobile, :first_name, :middle_name, :last_name, :created_at, :updated_at
json.url user_url(user, format: :json)
