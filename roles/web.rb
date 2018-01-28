name 'web'
description 'This is a test role'
run_list "recipe[apache-webserver]"
default_attributes "test" => {
         'a1' => "Hello from attribute 1",
         'a2' => "Hello from attribute 2"
        },
       "chef_client" => { "interval" => "180", "splay" => "30"  }

