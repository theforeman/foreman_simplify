Deface::Override.new(:virtual_path => 'home/_topbar',
                     :name => 'disable_trends',
                     :remove => %q{code[erb-loud]:contains("menu 'trends'")})
