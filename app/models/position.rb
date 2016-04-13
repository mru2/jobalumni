class Position < ActiveRecord::Base
  belongs_to :user
  belongs_to :company

  validates :title, :end_date, :user, :company, presence: true

  def current?
    end_date.nil?
  end
end
