module Account
  class DashboardsController < ApplicationController
    before_action :authenticate_user!
    def show
    end
  end
end
