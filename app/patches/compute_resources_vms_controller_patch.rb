ForemanSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented(ComputeResourcesVmsController,
                     [:index, :new, :create, :show, :power, :destroy, :console])
  ComputeResourcesVmsController.skip_filter :find_compute_resource, :find_vm
end
