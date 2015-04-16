class Manage::PermissionsController < Manage::ApplicationController

  def index
    @permissions = PermissionsSearcher.new(current_user, params).results
  end

end
