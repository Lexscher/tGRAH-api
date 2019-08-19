class User < ApplicationRecord
	has_many :projects
  has_secure_password
  validates :username, :email, uniqueness: { case_sensitive: false }
end
