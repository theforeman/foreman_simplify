Deface::Override.new(:virtual_path => 'home/_topbar',
                     :name => 'disable_audits',
                     :remove => %q{code[erb-loud]:contains("menu 'audits'")})
