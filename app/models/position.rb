class Position < ActiveRecord::Base
  belongs_to :user
  belongs_to :company

  validates :title, :user, :company, presence: true

  def current?
    end_date.nil?
  end
end
