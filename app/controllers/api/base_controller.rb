module Api
  # Common logic for all API controllers
  class BaseController < ApplicationController
    layout nil

    # TODO: find a way to send the CSRF token for ajax requests
    skip_before_action :verify_authenticity_token
  end
end
