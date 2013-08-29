ForemanSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented_ui_crud(TrendsController)
  TrendsController.skip_filter :find_trend
end
