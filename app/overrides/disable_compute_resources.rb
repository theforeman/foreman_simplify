Deface::Override.new(:virtual_path => 'home/_settings',
                     :name => 'disable_compute_resources',
                     :replace => "code[erb-silent]:contains('choices = setting_options')") do
  <<-END
  <%
    previous_item_is_divider = false
    choices = setting_options.map do |item|
      if item[0] == :group && item[1] == "Provisioning"
        item.dup.tap { |i| i[2] = i[2].reject { |subitem| subitem[1] == :compute_resources } }
      else
        item
      end
    end.reject do |item| # remove double dividers
      result = previous_item_is_divider && item[0] == :divider
      previous_item_is_divider = item[0] == :divider
      result
    end
  %>
  END
end
