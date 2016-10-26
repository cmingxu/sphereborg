class Dashboard::ImagesController < Dashboard::NodeDetailController
  def index
    @images = Docker::Image.all
  end

  def show
  end
end
