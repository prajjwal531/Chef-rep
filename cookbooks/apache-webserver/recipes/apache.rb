package 'apache2' do
  action :install
end

#file '/var/www/index.html' do
 #  content " <h1> This is a test file </h1>
  #                <h2> This is chef training from wipro and Ip is #{node["apache-webserver"]["ip"]} </h2>
   #         "
  # action :create
#end

template '/var/www/index.html' do
   source 'apache.erb'
   notifies :restart, 'service[apache2]', :immediately
end

node["apache-webserver"]["packages"].each do |data|
  package data do
       action :install
  end
end

service 'apache2' do
   action :nothing
end
