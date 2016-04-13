class CreateUserFromOmniauth

  attr_reader :auth_hash

  def initialize(auth_hash)
    @auth_hash = auth_hash
  end

  def execute!
    user = User.find_or_create_by(email: auth_hash['info']['email'])
    user.first_name = auth_hash['info']['first_name']
    user.last_name = auth_hash['info']['last_name']
    user.avatar_url = auth_hash['info']['image']
    user.promotion = 2015
    user.school_id = 1
    auth_hash['extra']['raw_info']['positions']['values'].each do |value|
      position = Position.find_or_create_by(title: value['title'])
      company_name = value['company']['name']
      position.company = Company.where('name LIKE ?', "%#{company_name}%").first
      user.positions << position
      position.save!
    end
    user.save!
    user
  end


end
