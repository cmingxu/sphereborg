class Dashboard::ApplicationsController < Dashboard::BaseController
  def index
    @applications = Marathon::App.list
    @info = Marathon.info
  end

  def show
    @application = Marathon::App.get params[:id]
  end


  %w(restart start scale suspend).each do |action|
    define_method action do
      @application = Marathon::App.get params[:id]
      @application.send "#{action}!", force: true
      redirect_back(fallback_location: root_path)
    end
  end
end
