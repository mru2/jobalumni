class User < ActiveRecord::Base

  belongs_to :school
  has_many :positions
  has_many :companies, through: :positions

  validates :first_name, :last_name, :email, :promotion, :school, presence: true
  validates :email, uniqueness: true

  # TODO : company as param for positions to display
  # TODO : presenter + eager load
  def serialize
    {
      id: id,
      first_name: first_name.capitalize,
      last_name: last_name.upcase,
      avatar_url: avatar_url,
      promotion: promotion,
      position: positions.first.title # TODO company argument used here
    }
  end

  def full_name
    "#{first_name.capitalize} #{last_name.upcase}"
  end


end
