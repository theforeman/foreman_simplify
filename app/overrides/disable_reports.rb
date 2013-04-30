Deface::Override.new(:virtual_path => 'home/_topbar',
                     :name => 'disable_reports',
                     :remove => %q{code[erb-loud]:contains("menu 'reports'")})
