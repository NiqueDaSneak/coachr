class Coach < ActiveRecord::Base
  validates :full_name, presence: true, uniqueness: true
  validates :email, email: true, uniqueness: true

  has_many :clients

  has_secure_password

end
