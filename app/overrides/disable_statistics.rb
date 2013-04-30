Deface::Override.new(:virtual_path => 'home/_topbar',
                     :name => 'disable_statistics',
                     :remove => %q{code[erb-loud]:contains("menu 'statistics'")})
