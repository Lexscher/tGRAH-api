class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email

  attribute :projects do |user|
    user.projects
  end
end
