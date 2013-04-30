ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  cp.not_implemented(AuditsController, [:index, :show])
  cp.not_implemented(Api::V1::AuditsController, [:index, :show])
end
