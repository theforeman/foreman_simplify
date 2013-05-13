module ForemanOpenstackSimplify::ControllerPatches
  class << self

    def not_implemented(controller_class, method_names, type = :text)
      controller_class.class_eval do
        method_names.each do |method_name|
          case type
          when :text
            define_method(method_name) do
              render :text => "Not Implemented", :status => :not_implemented
            end
          when :json
            define_method(method_name) do
              render :json => '{"error":{"message":"Not Implemented"}}', :status => :not_implemented
            end
          else
            raise ArgumentError, "Wrong response type '#{type.to_s}'"
          end
        end
      end
    end

    def not_implemented_ui_crud(controller_class)
      not_implemented(controller_class,
                      [:index, :show, :new, :create, :edit, :update, :destroy])
    end

    def not_implemented_api_crud(controller_class, skip_find_resource = true)
      not_implemented(controller_class,
                      [:index, :show, :create, :update, :destroy], :json)
      controller_class.skip_filter :find_resource if skip_find_resource
    end

  end
end
