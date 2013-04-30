ForemanOpenstackSimplify::ControllerPatches.tap do |cp|
  # FIXME: UI controller methods do not get overriden
  cp.not_implemented(ReportsController, [:index, :show, :create, :destroy])
  cp.not_implemented(Api::V1::ReportsController, [:index, :show, :destroy, :last])
end
