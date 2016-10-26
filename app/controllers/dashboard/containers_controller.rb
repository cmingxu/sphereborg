class Dashboard::ContainersController < Dashboard::NodeDetailController

  before_action do
    Docker.url = "tcp://192.168.1.155:2375"
  end
  
  def index
    @node = OpenStruct.new(id: "fop")
    @containers = Docker::Container.all
  end

  def show
    @container = Docker::Container.get params[:id]
  end

  %w(start stop restart pause unpause kill).each do |action|
    define_method action do
      @container = Docker::Container.get params[:id]
      @container.send "#{action}"
      redirect_back(fallback_location: root_path)
    end
  end
end
