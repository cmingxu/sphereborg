class Dashboard::ContainersController < Dashboard::BaseController
  def index
    @containers = Docker::Container.all
  end
end
