ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented(ComputeResourcesVmsController,
                     [:index, :new, :create, :show, :power, :destroy, :console])
end
