class User < ActiveRecord::Base

  belongs_to :school
  has_many :positions

  validates :first_name, :last_name, :email, :promotion, :school, presence: true
  validates :email, uniqueness: true

end
