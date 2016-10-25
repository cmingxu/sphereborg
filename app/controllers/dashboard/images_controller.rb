class Dashboard::ImagesController < Dashboard::BaseController
  def index
    @images = Docker::Image.all
  end

  def show
  end
end
