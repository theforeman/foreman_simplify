ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented_ui_crud(ComputeResourcesController)
  cp.not_implemented_api_crud(Api::V1::ComputeResourcesController)
  cp.not_implemented_api_crud(Api::V2::ComputeResourcesController)
end
