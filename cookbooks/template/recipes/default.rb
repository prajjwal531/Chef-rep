#
# Cookbook:: template
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# i
#
template '/home/vagrant/temp.txt' do
    source 'test.erb'
    action :create
end
