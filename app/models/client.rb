class Client < ActiveRecord::Base
  validates :full_name, presence: true, uniqueness: true
  validates :email, email: true, uniqueness: true

  belongs_to :coach
  has_many :goals

  has_secure_password

end
