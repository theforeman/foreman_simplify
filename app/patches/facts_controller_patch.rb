ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  # FIXME: UI controller methods do not get overriden
  cp.not_implemented(FactsController, [:index, :show])
  cp.not_implemented(FactValuesController, [:index, :create])
  cp.not_implemented(Api::V1::FactValuesController, [:index])
end
