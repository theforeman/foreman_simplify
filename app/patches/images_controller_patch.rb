ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented_ui_crud(ImagesController)
  cp.not_implemented_api_crud(Api::V1::ImagesController)
end
