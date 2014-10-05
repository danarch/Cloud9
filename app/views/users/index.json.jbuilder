json.array! @users do |u|
  json.(u, :email)
end
