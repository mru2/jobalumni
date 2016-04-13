class Company < ActiveRecord::Base

  has_many :positions
  has_many :users, through: :positions

  validates :name, :jt_id, presence: true

end
