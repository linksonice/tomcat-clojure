#
# Cookbook:: tomcat-clojure
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# multipackage_internal [ "tomcat8", "mlocate" ] do
# end

package "tomcat8" do
  action :install
end

cookbook_file "Copy a file" do  
  group "root"
  mode "0755"
  owner "root"
  path "/var/lib/tomcat8/webapps/clojure-collector-1.1.0-standalone.war"
  source "clojure-collector-1.1.0-standalone.war"  
end

service "tomcat8" do
  action [:enable, :start]
end
