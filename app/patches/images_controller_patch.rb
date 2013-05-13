ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented_ui_crud(ImagesController)
  ImagesController.skip_filter :find_compute_resource, :find_by_name

  cp.not_implemented_api_crud(Api::V1::ImagesController)
  Api::V1::ImagesController.skip_filter :find_compute_resource
end
