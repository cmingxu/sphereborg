class Dashboard::NodesController < Dashboard::BaseController
  before_action do
    Docker.url = "tcp://192.168.31.122:2375"
  end

  def index
    @nodes = [OpenStruct.new(id: "fop", ip: "192.168.31.122")]
  end

  def show
    @info = Docker.info
  end
end
