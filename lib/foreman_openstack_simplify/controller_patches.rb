module ForemanOpenstackSimplify::ControllerPatches
  class << self

    def not_implemented(controller_class, method_names)
      controller_class.class_eval do
        method_names.each do |method_name|
          define_method(method_name) do
            render :text => "Not Implemented", :status => :not_implemented
          end
        end
      end
    end

    def not_implemented_ui_crud(controller_class)
      not_implemented(controller_class,
                      [:index, :show, :new, :create, :edit, :update, :destroy])
    end

    def not_implemented_api_crud(controller_class)
      not_implemented(controller_class,
                      [:index, :show, :create, :update, :destroy])
    end

  end
end
