class School < ActiveRecord::Base

  has_many :users

  validates :name, :jt_id, presence: true

end
