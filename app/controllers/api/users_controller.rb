module Api
  class UsersController < BaseController

    def index
      company = Company.find_by_jt_id(params[:company_id])
      school = School.find_by_jt_id(params[:school_id])

      render_404! unless company && school

      users = company
              .users
              .where(users: { school_id: school.id })

      render json: {
        total: users.count,
        users: users.map(&:serialize) # TODO : logic here
      }.to_json
    end

  end
end
