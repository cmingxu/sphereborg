class Dashboard::NodesController < Dashboard::BaseController
  before_action do
    Docker.url = "tcp://192.168.1.155:2375"
  end

  def index
    @nodes = [OpenStruct.new(id: "fop", ip: "192.168.1.155")]
  end

  def show
    @info = Docker.info
    @node = OpenStruct.new(id: "fod", ip: "192.168.1.155")
  end
end
