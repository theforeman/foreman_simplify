ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented_ui_crud(TrendsController)
end
