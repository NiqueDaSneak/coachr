class Coach < ActiveRecord::Base
  before_create :check_params

  has_many :clients

  validates :full_name, presence: true, uniqueness: true
  validates :email, email: true, uniqueness: true


  has_secure_password


  def check_params
    self.email.downcase
  end

end
