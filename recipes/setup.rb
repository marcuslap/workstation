package 'tree' do
  action :install
end
package 'ntp' do
  action :install
end

package 'emacs'

package 'vim-enhanced'

package 'nano'

package 'git' do 
  action :install
end

#node['ipaddress']
#node['memory']['total']

# print statement 'I have 4 apples'
#apple_count = 4
#puts "I have #{apple_count} apples"

file '/etc/motd' do
  content "'This server is the property of Marcus LaPilusa'
  HOSTNAME:  #{node['hostname']}
  IPADDRESS:  #{node['ipaddress']}
  CPU:  #{node['cpu']['0']['mhz']}
  MEMINFO:  #{node['memory']['total']}
"
  action :create 
  owner 'root'
  group 'root'
end
