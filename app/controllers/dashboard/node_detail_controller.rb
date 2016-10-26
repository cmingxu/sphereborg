class Dashboard::NodeDetailController < Dashboard::BaseController
   before_action do
    @node = OpenStruct.new(id: "fod", ip: "192.168.1.155")
  end
end
