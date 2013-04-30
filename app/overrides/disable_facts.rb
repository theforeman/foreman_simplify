Deface::Override.new(:virtual_path => 'home/_topbar',
                     :name => 'disable_facts',
                     :remove => %q{code[erb-loud]:contains("menu 'facts'")})
