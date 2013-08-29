ForemanSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented(StatisticsController, [:index])
end
