class Client < ActiveRecord::Base
  belongs_to :coach
  has_many :goals

end
