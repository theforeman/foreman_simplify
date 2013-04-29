# TODO: consider putting the code into a helper
Deface::Override.new(:virtual_path => 'home/_settings',
                     :name => 'disable_provisioning_menu',
                     :replace => "code[erb-silent]:contains('choices = setting_options')") do
  <<-END
  <%
    previous_item_is_divider = false
    choices = setting_options.reject { |item| item[0] == :group && item[1] == "Provisioning" }.
                              reject do |item| # remove double dividers
                               if previous_item_is_divider && item[0] == :divider
                                 true
                               else
                                 previous_item_is_divider = item[0] == :divider
                                 false
                               end
                             end
  %>
  END
end
