class Dashboard::ApplicationsController < Dashboard::BaseController
  def index
    @applications = Marathon::App.list
  end

  def show
    @application = Marathon::App.get params[:id]
  end
end
